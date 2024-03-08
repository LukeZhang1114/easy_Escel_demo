package com.example.exceldemo.util;

import lombok.Getter;

/**
 * 返回通用枚举
 */
@Getter
public enum ResultCode {

    SUCCESS(200, "成功"),
    FAIL(201, "失败"),
    SERVICE_ERROR(2012, "服务异常"),
    DATA_ERROR(204, "数据异常"),
    ILLEGAL_REQUEST(205, "非法请求"),
    REPEAT_SUBMIT(206, "重复提交"),


    LOGIN_AUTH(208, "未登陆"),
    PERMISSION(209, "没有权限"),
    ARGUMENT_VALID_ERROR(210, "参数校验异常"),
    ACCOUNT_ERROR(214, "账号不正确"),
    ACCOUNT_EXIST(215, "账号已存在"),
    PASSWORD_ERROR(216, "密码不正确"),
    LOGIN_MOBILE_ERROR(217, "账号或密码不正确"),
    ACCOUNT_STOP(218, "账号已停用"),
    NODE_ERROR(219, "该节点下有子节点，不可以删除"),

    BAD_REQUEST(400, "请求错误"),
    UNAUTHORIZED(401, "未授权或token已经过期"),
    FORBIDDEN(403, "禁止访问"),
    NOT_FOUND(404, "资源不存在"),
    GATEWAY_TIMEOUT(504, "网关超时"),
    FAILED(500, "服务器内部错误"),

    NULL_POINTER_EXCEPTION(500, "未知异常，请联系管理员!"),
    AIOOBE_EXCEPTION(500, "未知异常，请联系管理员!!"),
    INVALID_FORMAT_EXCEPTION(500, "格式异常"),
    ILLEGAL_STATE_EXCEPTION(500, "状态不合法"),
    HTTP_REQUEST_METHOD_NOT_SUPPORTED_EXCEPTION(500, "HTTP请求方法不支持"),
    IMPORT_FAILED(500, "导入失败！"),
    COMPLETION_EXCEPTION_FAILED(500, "服务调用失败！");

    private int code;
    private String message;

    ResultCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }
}