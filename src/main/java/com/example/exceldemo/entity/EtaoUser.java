package com.example.exceldemo.entity;

import java.util.Date;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.format.DateTimeFormat;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.example.exceldemo.annotation.NotNullField;
import lombok.Data;

import javax.validation.constraints.Email;
import java.io.Serializable;

/**
 * (EtaoUser)表实体类
 *
 * @author makejava
 * @since 2024-03-05 16:44:06
 */
@SuppressWarnings("serial")
@Data
public class EtaoUser extends Model<EtaoUser> {
    //用户ID UUID
    @TableId(type = IdType.AUTO)
    private Integer userId;

    //用户登录名 邮箱地址
    private String userName;

    //用户昵称
    private String niceName;

    //密码
    private String passward;

    //角色ID,对应相关权限
    private Integer roleId;

    //用户删除状态
    // 0未删除 1已删除
    private short deleteState;

    //用户创建时间
    private Date creatData;

    //用户更新时间
    private Date updateData;

    //性别 0男 1女 3未知
    private Integer sex;

    /**
     * 获取主键值
     *
     * @return 主键值
     */
    @Override
    protected Serializable pkVal() {
        return this.userId;
    }
}

