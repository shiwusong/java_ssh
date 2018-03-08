package com.how2java.action;

import com.how2java.pojo.UsersEntity;
import com.how2java.dao.UserDAO;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;
import java.util.List;
public class UserAction {
    UserDAO userDAO;
    UsersEntity user;

    // 查找
    public String login(){
        // 获取表单数据
        HttpServletRequest request = ServletActionContext.getRequest();
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        user = userDAO.search(username,password);
        if(user == null){return "loginJsp";}
        //登陆信息写入session
		Map session = ActionContext.getContext().getSession();
		session.put("username",user.getUsername());
        return "indexJsp";
    }

    // 主页
    public String index(){
        Map session = ActionContext.getContext().getSession();
        Object username = session.get("username");
        if(username != null && username != ""){
            return "indexJsp";
        }
        return "loginJsp";
    }

    // 注销
    public String logout(){
        Map session = ActionContext.getContext().getSession();
        session.put("username","");
        return "logoutJsp";
    }


    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }


}
