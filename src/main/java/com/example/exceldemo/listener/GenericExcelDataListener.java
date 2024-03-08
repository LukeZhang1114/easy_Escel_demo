package com.example.exceldemo.listener;

import cn.hutool.core.util.ObjectUtil;
import com.alibaba.excel.context.AnalysisContext;
import com.alibaba.excel.util.StringUtils;
import com.example.exceldemo.annotation.NotNullField;
import com.alibaba.excel.event.AnalysisEventListener;
import com.example.exceldemo.entity.EtaoUser;
import com.example.exceldemo.entity.EtaoUserExcel;
import com.example.exceldemo.exception.BusinessException;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.formula.functions.T;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;

@Slf4j
public class GenericExcelDataListener<T> extends AnalysisEventListener<T> {
    private final Validator validator;

    {
        // 初始化校验器对象
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        validator = factory.getValidator();
    }


    // 每次最多导入条数
    private final int batchSize = 200;
    // 加入一个判断标签，判断数据是否已经读取完
    private volatile boolean retryLock = false;

    // 解析完成后的数据集合, 监听对象初始化之后，立即初始化集合对象
    private final List<T> dataList = new ArrayList<>();

    public GenericExcelDataListener() {
    }

    @Override
    public void invoke(T data, AnalysisContext context) {
        // 校验数据获取校验信息
        Set<ConstraintViolation<T>> constraintViolations = validator.validate(data);
        List<String> errorMessages = constraintViolations.stream()
                .map(ConstraintViolation::getMessageTemplate)
                .collect(Collectors.toList());

        if (!errorMessages.isEmpty()) {
            log.error("不合规的数据:" + errorMessages);
            throw new BusinessException(errorMessages.get(0));
        }
        // 使用传入的验证器进行数据验证
        int rowIndex = context.readRowHolder().getRowIndex();
        validateNotNull(data, rowIndex + 1);
        // 在这里处理正常的业务逻辑
        // ...
        dataList.add(data);
    }

    @Override
    public void doAfterAllAnalysed(AnalysisContext context) {
        // 所有数据解析完成后的处理逻辑
        retryLock = true;
    }

    public List<T> getDataList() {
        while (true){
            if (retryLock){
                if (dataList.size() > batchSize){
                    // 手动清空数据内存数据，减少内存消耗
                    dataList.clear();
                    throw new BusinessException("一次最多导入"+ batchSize +"条数据");
                } else {
                    return dataList;
                }
            }
        }
    }

    private void validateNotNull(T data, int rowIndex) {
        // 获取所有字段
        Field[] fields = data.getClass().getDeclaredFields();

        // 遍历字段，检查是否带有 @NotNullField 注解
        for (Field field : fields) {
            field.setAccessible(true);
            String fieldValue = "";
            try {
                fieldValue = (String)field.get(data);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
            validateNotNull(field,fieldValue,rowIndex);
        }
    }

    /**
     * 验证不能为空信息
     */
    private void validateNotNull(Field field, String fieldValue, int rowIndex){
        if (field.isAnnotationPresent(NotNullField.class)) {
            if (StringUtils.isBlank(fieldValue)) {
                // 获取注解上的错误消息，或使用默认消息
                String message = field.getAnnotation(NotNullField.class).message();
                // 抛出异常或记录错误信息，表示数据不合法
                throw new BusinessException("第" + rowIndex + "行数据，" + message);
            }
        }
    }


}
