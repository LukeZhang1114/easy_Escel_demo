package com.example.exceldemo.exception;

import com.alibaba.excel.exception.ExcelDataConvertException;
import com.example.exceldemo.util.CommonResult;
import com.example.exceldemo.util.ResultCode;
import com.fasterxml.jackson.databind.exc.InvalidFormatException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CompletionException;

/**
 * @author suruomo
 * @date 2020/8/7 15:39
 * @description: 全局异常处理类
 */
@RestControllerAdvice
@Slf4j
public class GlobalExceptionHandler {

    /**
     * 全局异常捕捉处理
     *
     * @param ex
     * @return
     */
    @ExceptionHandler(value = {Exception.class, RuntimeException.class})
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> errorHandler(Exception ex) {
        log.error("系统异常", ex);
        return CommonResult.failed(ResultCode.FAILED);
    }

    /**
     * 自定义异常
     *
     * @param ex
     * @return
     */
    @ExceptionHandler(value = {BusinessException.class})
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> businessHandler(BusinessException ex) {
        log.error("自定义异常", ex.getMsg());
        return CommonResult.failed(ex.getMsg());
    }
    /**
     * 方法参数错误异常
     *
     * @param ex
     * @return
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> MethodArgumentNotValidExceptionHandler(MethodArgumentNotValidException ex) {
        Map<String, String> map = new HashMap<>();
        log.error("参数预检异常", ex);
        ex.getBindingResult().getFieldErrors().forEach(e -> map.put(e.getField(), e.getDefaultMessage()));
        // 然后提取错误提示信息进行返回
        return CommonResult.failed(ResultCode.ARGUMENT_VALID_ERROR, map);
    }
    /**
     * 传入参数错误异常
     *
     * @param ex
     * @return
     */
    @ExceptionHandler(ExcelDataConvertException.class)
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> excelArgumentNotValidExceptionHandler(ExcelDataConvertException ex) {
        Map<String, String> map = new HashMap<>();
        log.error("excel参数异常", ex);

        // 然后提取错误提示信息进行返回
        return CommonResult.failed(String.format("第 %s 行第 %s 列出现了 %s 转换异常", ex.getRowIndex(), ex.getColumnIndex(), ex.getCause().getMessage()));
    }



    /**
     * NPE
     * @param ex
     * @return
     */
    @ExceptionHandler(value = NullPointerException.class)
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> npException(Exception ex) {
        log.error("系统异常", ex);
        return CommonResult.failed(ResultCode.NULL_POINTER_EXCEPTION);
    }

    /**
     * Http请求方法不支持异常
     * @param ex
     * @return
     */
    @ExceptionHandler(value = HttpRequestMethodNotSupportedException.class)
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> HttpRequestMethodNotSupportedException(Exception ex) {
        log.error("Http请求方法不支持异常", ex);
        return CommonResult.failed(ResultCode.HTTP_REQUEST_METHOD_NOT_SUPPORTED_EXCEPTION);
    }



    /**
     * AIOOBE
     * @param ex
     * @return
     */
    @ExceptionHandler(value = ArrayIndexOutOfBoundsException.class)
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> ArrayIndexOutOfBoundsException(Exception ex) {
        printError(ex);
        return CommonResult.failed(ResultCode.AIOOBE_EXCEPTION);
    }

    /**
     * 格式异常
     * @param ex
     * @return
     */
    @ExceptionHandler(value = InvalidFormatException.class)
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> InvalidFormatException(Exception ex) {
        printError(ex);
        return CommonResult.failed(ResultCode.INVALID_FORMAT_EXCEPTION);
    }

    /**
     * 状态不合法
     * @param ex
     * @return
     */
    @ExceptionHandler(value = IllegalStateException.class)
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> IllegalStateException(Exception ex) {
        printError(ex);
        return CommonResult.failed(ResultCode.ILLEGAL_STATE_EXCEPTION);
    }

    /**
     * 服务调用失败
     * @param ex
     * @return
     */
    @ExceptionHandler(value = CompletionException.class)
    @ResponseStatus(HttpStatus.OK)
    public CommonResult<Object> CompletionException(Exception ex) {
        printError(ex);
        return CommonResult.failed(ResultCode.COMPLETION_EXCEPTION_FAILED);
    }

    private static void printError(Exception ex){
        StackTraceElement stackTraceElement= ex.getStackTrace()[0];
        //报错全路径类名
        String className = stackTraceElement.getClassName();
        //报错方法
        String methodName = stackTraceElement.getMethodName();
        //报错行号
        int lineNumber = stackTraceElement.getLineNumber();
        log.error("系统出错，错误信息:{}",ex+" at "+className+"."+methodName+"方法:第"+lineNumber+"行");
    }
}
