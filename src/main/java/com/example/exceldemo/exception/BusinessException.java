package com.example.exceldemo.exception;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BusinessException extends RuntimeException {
    // 枚举名称
    private String msg;

    public BusinessException(String msg) {
        this.msg = msg;
    }


    public String getMsg() {
        return msg;
    }


}
