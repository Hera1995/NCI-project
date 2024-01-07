package com.nci.filmreview.dao;

import com.nci.filmreview.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdminDao {
    //list all users
    List<User> list();

}
