package com.example.exceldemo.common;

import com.example.exceldemo.exception.BusinessException;
import lombok.Data;
import lombok.Getter;

/**
 * 性别枚举类
 */
@Getter
public enum SexEnum {
    MALE("男", 0),
    FEMALE("女", 1),
    UNKNOW("未知", 3);
    private final String sexName;
    private final Integer sexCode;

    SexEnum(String sexName, Integer sexCode) {
        this.sexName = sexName;
        this.sexCode = sexCode;
    }

    // 通过 sexName 获取 sexCode
    public static Integer getSexCodeByName(String name) {
        for (SexEnum sex : values()) {
            if (sex.getSexName().equals(name)) {
                return sex.getSexCode();
            }
        }
        throw new BusinessException("性别名称传入错误"); // or throw an exception, handle it based on your use case
    }

    // 通过 sexCode 获取 sexName
    public static String getSexNameByCode(Integer code) {
        for (SexEnum sex : values()) {
            if (sex.getSexCode().equals(code)) {
                return sex.getSexName();
            }
        }
        throw new BusinessException("性别ID传入错误"); // or throw an exception, handle it based on your use case
    }
}
    

