package com.example.exceldemo.util;

import lombok.Data;

/**
 * 通用返回结果封装类
 * Created by macro on 2019/4/19.
 */
@Data
public class CommonResult<T> {
    /**
     * 状态码
     */
    private int code;
    /**
     * 提示信息
     */
    private String msg;
    /**
     * 数据封装
     */
    private T data;

    protected CommonResult() {
    }


    public CommonResult(int code, String message, T data) {
        this.code = code;
        this.msg = message;
        this.data = data;
    }

    public CommonResult(int code, String message) {
        this.code = code;
        this.msg = message;
    }


    /**
     * 成功返回结果
     *
     * @param data 获取的数据
     */
    public static <T> CommonResult<T> success(T data) {
        return new CommonResult<T>(ResultCode.SUCCESS.getCode(), ResultCode.SUCCESS.getMessage(), data);
    }

    /**
     * 成功返回结果
     *
     */
    public static <T> CommonResult<T> success() {
        return new CommonResult<T>(ResultCode.SUCCESS.getCode(), ResultCode.SUCCESS.getMessage());
    }

    /**
     * 成功返回结果
     *
     * @param data    获取的数据
     * @param message 提示信息
     */
    public static <T> CommonResult<T> success(T data, String message) {
        return new CommonResult<T>(ResultCode.SUCCESS.getCode(), message, data);
    }

    /**
     * 失败返回结果
     *
     * @param errorCode 错误码
     */
    public static <T> CommonResult<T> failed(ResultCode errorCode) {
        return new CommonResult<T>(errorCode.getCode(), errorCode.getMessage(), null);
    }

    public static <T> CommonResult<T> failed(ResultCode errorCode, T data) {
        return new CommonResult<T>(errorCode.getCode(), errorCode.getMessage(), data);
    }

    /**
     * 失败返回结果
     *
     * @param message 提示信息
     */
    public static <T> CommonResult<T> failed(String message) {
        return new CommonResult<T>(ResultCode.FAILED.getCode(), message, null);
    }

    /**
     * 失败返回结果
     */
    public static <T> CommonResult<T> failed() {
        return failed(ResultCode.FAILED);
    }

    /**
     * 参数验证失败返回结果
     */
    public static <T> CommonResult<T> validateFailed() {
        return failed(ResultCode.ARGUMENT_VALID_ERROR);
    }

    /**
     * 参数验证失败返回结果
     *
     * @param message 提示信息
     */
    public static <T> CommonResult<T> validateFailed(String message) {
        return new CommonResult<T>(ResultCode.ARGUMENT_VALID_ERROR.getCode(), message, null);
    }

    public CommonResult<T> setCode(int code) {
        this.code = code;
        return this;
    }

    public CommonResult<T> setMsg(String msg) {
        this.msg = msg;
        return this;
    }

    public CommonResult<T> setData(T data) {
        this.data = data;
        return this;
    }


    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }

    public T getData() {
        return data;
    }

}