package com.example.exceldemo.sercice.impl;

import cn.hutool.core.util.ObjectUtil;
import com.alibaba.excel.EasyExcel;
import com.alibaba.excel.ExcelWriter;
import com.alibaba.excel.write.metadata.style.WriteCellStyle;
import com.alibaba.excel.write.metadata.style.WriteFont;
import com.alibaba.excel.write.style.HorizontalCellStyleStrategy;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.exceldemo.common.RoleEnum;
import com.example.exceldemo.common.SexEnum;
import com.example.exceldemo.dao.EtaoUserDao;
import com.example.exceldemo.entity.EtaoUser;
import com.example.exceldemo.entity.EtaoUserExcel;
import com.example.exceldemo.entity.ExportEtaoUser;
import com.example.exceldemo.exception.BusinessException;
import com.example.exceldemo.listener.GenericExcelDataListener;
import com.example.exceldemo.sercice.EtaoService;
import com.example.exceldemo.util.ExcelUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.SimpleTimeZone;

@Service
@Slf4j
public class EtaoServiceImpl implements EtaoService {
    private static final String TEMPLATE_FILE_PATH = "excelTemplate/";
    // 表头数据占用行数
    private final Integer HEAD_ROW_NUMBER = 1;
    // excel时间格式
    private static final String DEFAULT_DATE_PATTERN = "yyyy年MM月dd日HH时mm分ss秒";
    // excel 表内容字体大小
    private static final short CONTENT_WRITE_FONT = 12;
    // excel 表头字体大小
    private static final short HEAD_WRITE_FONT = 16;

    @Autowired
    private EtaoUserDao etaoUserDao;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void importUserInfo(MultipartFile file) {
        String fileName = file.getOriginalFilename();
        if (!fileName.matches("^.+\\.(?i)(xls)$") && !fileName.matches("^.+\\.(?i)(xlsx)$")) {
            log.error("文件[" + fileName + "]格式错误，请上传excel文件");
            throw new BusinessException("文件格式错误，请上传excel文件");
        }
        GenericExcelDataListener<EtaoUserExcel> genericExcelDataListener = new GenericExcelDataListener<>();
        List<EtaoUserExcel> etaoUserExcels = null;
        try {
            EasyExcel.read(new BufferedInputStream(file.getInputStream()), EtaoUserExcel.class, genericExcelDataListener)
                    .sheet()
                    .autoTrim(false)
                    .headRowNumber(HEAD_ROW_NUMBER)
                    .doRead();
            etaoUserExcels = genericExcelDataListener.getDataList();
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (BusinessException ex) {
            throw ex;
        }
        if (ObjectUtil.isEmpty(etaoUserExcels)) {
            log.error("文件数据为空");
            throw new BusinessException("文件数据为空");
        }
        etaoUserExcels.forEach(etaoUser -> {
            try {
                EtaoUser user = new EtaoUser();
                BeanUtils.copyProperties(etaoUser, user);
                // 角色名称与角色ID的转换
                user.setRoleId(RoleEnum.getRoleIdByName(etaoUser.getRoleId()));
                user.setUpdateData(new Date());
                user.setDeleteState((short) 0);
                user.setSex(SexEnum.getSexCodeByName(etaoUser.getSex()));
                user.setCreatData(new SimpleDateFormat(DEFAULT_DATE_PATTERN).parse(etaoUser.getCreatData()));
                // 新增角色
                etaoUserDao.insert(user);
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
        });
    }

    @Override
    public void exportEmployeeExcel(HttpServletResponse response) {
        //获取所有数据
        List<EtaoUser> etaoUsers = etaoUserDao.selectList(
                new LambdaQueryWrapper<EtaoUser>()
                        .select(EtaoUser::getUserName,
                                EtaoUser::getNiceName,
                                EtaoUser::getRoleId,
                                EtaoUser::getCreatData,
                                EtaoUser::getUpdateData,
                                EtaoUser::getSex));
        List<ExportEtaoUser> userList = new ArrayList<>();
        if (!ObjectUtil.isEmpty(etaoUsers)) {
            for (EtaoUser etaoUser : etaoUsers) {
                // 字段转换
                ExportEtaoUser exportEtaoUser = new ExportEtaoUser();
                BeanUtils.copyProperties(etaoUser, exportEtaoUser);
                exportEtaoUser.setSex(SexEnum.getSexNameByCode(etaoUser.getSex()));
                exportEtaoUser.setRoleId(RoleEnum.getRoleNameById(etaoUser.getRoleId()));
                exportEtaoUser.setCreatData(new SimpleDateFormat(DEFAULT_DATE_PATTERN).format(etaoUser.getCreatData()));
                exportEtaoUser.setUpdateData(new SimpleDateFormat(DEFAULT_DATE_PATTERN).format(etaoUser.getUpdateData()));
                userList.add(exportEtaoUser);
            }
        }

        // 方法1 使用已有的策略 推荐
        // HorizontalCellStyleStrategy 每一行的样式都一样 或者隔行一样
        // AbstractVerticalCellStyleStrategy 每一列的样式都一样 需要自己回调每一页
        // 头的策略
        WriteCellStyle headWriteCellStyle = new WriteCellStyle();
        // 背景设置为红色
        WriteFont headWriteFont = new WriteFont();
        headWriteFont.setFontHeightInPoints(HEAD_WRITE_FONT);
        headWriteCellStyle.setWriteFont(headWriteFont);
        // 内容的策略
        WriteCellStyle contentWriteCellStyle = new WriteCellStyle();
        WriteFont contentWriteFont = new WriteFont();
        // 字体大小
        contentWriteFont.setFontHeightInPoints(CONTENT_WRITE_FONT);
        contentWriteCellStyle.setWriteFont(contentWriteFont);
        // 这个策略是 头是头的样式 内容是内容的样式 其他的策略可以自己实现
        HorizontalCellStyleStrategy horizontalCellStyleStrategy = new HorizontalCellStyleStrategy(headWriteCellStyle, contentWriteCellStyle);

        // 这里 需要指定写用哪个class去写，然后写到第一个sheet，名字为模板 然后文件流会自动关闭
//        EasyExcel.write(fileName, ExportEtaoUser.class)
//                .registerWriteHandler(horizontalCellStyleStrategy)
//                .sheet("用户")
//                .doWrite(userList);
        try {
            ExcelUtils.writeExcel(response,userList,"用户导出数据","用户",ExportEtaoUser.class,horizontalCellStyleStrategy);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
