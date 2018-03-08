package com.how2java.action;

import com.how2java.dao.DcmDAO;
import com.how2java.pojo.DcmEntity;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DcmAction {
    DcmDAO dcmDAO;
    List<DcmEntity> ds = new ArrayList<>();
    DcmEntity d;

    //获取当前病人所有dcm图像
    public String list(){
        //登陆验证
        Map session = ActionContext.getContext().getSession();
        Object userName = session.get("username");
        if(userName == null || userName ==""){return "loginJsp";}

        // 获取表单数据
        HttpServletRequest request = ServletActionContext.getRequest();
        String id = request.getParameter("id");

        ds.clear();
        ds.addAll(dcmDAO.list(Integer.parseInt(id)));
        return "listJsp";
    }

    //打开dcm_app
    public String view(){
        //登陆验证
        Map session = ActionContext.getContext().getSession();
        Object userName = session.get("username");
        if(userName == null || userName ==""){return "loginJsp";}

        // 获取表单数据
        HttpServletRequest request = ServletActionContext.getRequest();
        String id = request.getParameter("id");

        d = dcmDAO.search(Integer.parseInt(id));
        return "viewJsp";
    }

    //添加DCM图像
    public String add(){
        return "addJsp";
    }




    public DcmDAO getDcmDAO() {
        return dcmDAO;
    }

    public void setDcmDAO(DcmDAO dcmDAO) {
        this.dcmDAO = dcmDAO;
    }
    public List<DcmEntity> getDs() {
        return ds;
    }

    public void setDs(List<DcmEntity> ds) {
        this.ds = ds;
    }
    public DcmEntity getD() {
        return d;
    }

    public void setD(DcmEntity d) {
        this.d = d;
    }
}
