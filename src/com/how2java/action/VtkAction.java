package com.how2java.action;

import com.how2java.dao.VtkDAO;
import com.how2java.pojo.VtkEntity;
import com.opensymphony.xwork2.ActionContext;
import com.sun.tools.javac.util.Convert;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

public class VtkAction {
    VtkDAO vtkDAO;

    VtkEntity vtkEntity;

    public String xtk(){
        // 获取表单数据
        HttpServletRequest request = ServletActionContext.getRequest();
        String id = request.getParameter("id");
        // 检测登陆状态
        Map session = ActionContext.getContext().getSession();
        Object username = session.get("username");
        if(username == null || username == ""){
            return "loginJsp";
        }

        // 获取vtk文件路径
        List<VtkEntity> vs = vtkDAO.search(Integer.parseInt(id));
        vtkEntity = null; // 清除上次的记录
        if(!vs.isEmpty())
        {
            vtkEntity = vs.get(0);
        }
        return "xtkJsp";
    }


    public VtkDAO getVtkDAO() {
        return vtkDAO;
    }

    public void setVtkDAO(VtkDAO vtkDAO) {
        this.vtkDAO = vtkDAO;
    }
    public VtkEntity getVtkEntity() {
        return vtkEntity;
    }

    public void setVtkEntity(VtkEntity vtkEntity) {
        this.vtkEntity = vtkEntity;
    }
}
