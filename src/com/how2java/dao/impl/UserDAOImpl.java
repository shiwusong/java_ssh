package com.how2java.dao.impl;

import com.how2java.dao.UserDAO;
import com.how2java.pojo.UsersEntity;
import org.springframework.orm.hibernate3.HibernateTemplate;

import java.util.List;

public class UserDAOImpl extends HibernateTemplate implements UserDAO {

    // 获取
    @Override
    public UsersEntity search(String username, String password){
        List<UsersEntity> list =
        find("from UsersEntity u where u.username = ? and u.password = ?",
                new  String[]{username,password});
        if(list.isEmpty()){return null;}
        return list.get(0);
    }
}
