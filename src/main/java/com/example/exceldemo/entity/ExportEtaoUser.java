package com.example.exceldemo.entity;

import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import lombok.Data;

@Data
public class ExportEtaoUser {
    //用户登录名 邮箱地址
    @ExcelProperty(value = "用户登录名", index = 0)
    @ColumnWidth(15)
    private String userName;

    //用户昵称
    @ExcelProperty(value = "用户昵称", index = 1)
    @ColumnWidth(12)
    private String niceName;

    //角色ID,对应相关权限
    @ExcelProperty(value = "角色名称", index = 2)
    @ColumnWidth(12)
    private String roleId;

    //用户创建时间
    @DateTimeFormat("yyyy年MM月dd日HH时mm分ss秒")
    @ExcelProperty(value = "用户创建时间", index = 3)
    @ColumnWidth(30)
    private String creatData;

    @ExcelProperty(value = "用户性别", index = 4)
    @ColumnWidth(12)
    //性别 0男 1女 3未知
    private String sex;

    @ExcelProperty(value = "用户更新时间", index = 5)
    @ColumnWidth(30)
    private String updateData;

}
