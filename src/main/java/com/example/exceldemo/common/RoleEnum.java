package com.example.exceldemo.common;

import com.example.exceldemo.exception.BusinessException;
import lombok.Getter;

/**
 * 角色枚举类
 */
@Getter
public enum RoleEnum {
    ROOT_ROLE("管理员",1),
    USER_ROLE("用户",0);
    private final String roleName;
    private final Integer roleId;
    RoleEnum(String roleName, Integer roleId) {
        this.roleName = roleName;
        this.roleId = roleId;
    }

    public static Integer getRoleIdByName(String name) {
        for (RoleEnum value : values()) {
            if (value.getRoleName().equals(name)) {
                return value.getRoleId();
            }
        }
        throw new BusinessException("角色名称传入错误");
    }

    public static String getRoleNameById(Integer id) {
        for (RoleEnum value : values()) {
            if (value.getRoleId().equals(id)) {
                return value.getRoleName();
            }
        }
        throw new BusinessException("角色ID传入错误");
    }
}
