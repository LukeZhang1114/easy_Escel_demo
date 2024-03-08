package com.example.exceldemo.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.exceldemo.entity.EtaoUser;
import org.apache.ibatis.annotations.Mapper;

/**
 * (EtaoUser)表数据库访问层
 *
 * @author makejava
 * @since 2024-03-05 16:31:49
 */
@Mapper
public interface EtaoUserDao extends BaseMapper<EtaoUser> {

}

