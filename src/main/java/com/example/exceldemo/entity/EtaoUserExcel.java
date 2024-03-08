package com.example.exceldemo.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.example.exceldemo.annotation.NotNullField;
import lombok.Data;

import javax.validation.constraints.Email;

@Data
public class EtaoUserExcel {

    //用户登录名 邮箱地址
    @ExcelProperty(value = "用户登录名", index = 0)
    @NotNullField(message = "用户登录名不能为空")
    @Email(message = "邮箱地址错误")
    private String userName;

    //用户昵称
    @ExcelProperty(value = "用户昵称", index = 1)
    @NotNullField(message = "用户昵称不能为空")
    private String niceName;

    //密码
    @ExcelProperty(value = "用户密码", index = 2)
    @NotNullField(message = "用户密码不能为空")
    private String passward;

    //角色ID,对应相关权限
    @ExcelProperty(value = "角色名称", index = 3)
    @NotNullField(message = "角色名称为空")
    private String roleId;

    //用户创建时间
    @DateTimeFormat("yyyy年MM月dd日HH时mm分ss秒")
    @ExcelProperty(value = "用户创建时间", index = 4)
    private String creatData;

    @ExcelProperty(value = "用户性别", index = 5)
    @NotNullField(message = "用户性别不能为空")
    //性别 0男 1女 3未知
    private String sex;

}
