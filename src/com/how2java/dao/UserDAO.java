package com.how2java.dao;

import com.how2java.pojo.UsersEntity;

public interface UserDAO {
    public UsersEntity search(String username, String password);
}
