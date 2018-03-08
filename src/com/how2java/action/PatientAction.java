package com.how2java.action;

import com.how2java.pojo.PatientsEntity;
import com.how2java.dao.PatientDAO;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Map;
import java.util.List;


public class PatientAction {

	PatientDAO patientDAO;
	List<PatientsEntity> patients;


	// 获取patient集合
	public String list() {
		//登陆验证
		Map session = ActionContext.getContext().getSession();
		Object userName = session.get("username");
		if(userName == null || userName ==""){return "loginJsp";}

		patients = patientDAO.list();
		return "infoJsp";
	}

	// 添加patient
	public String add(){
		//登陆验证
		Map session = ActionContext.getContext().getSession();
		Object userName = session.get("username");
		if(userName == null || userName ==""){return "loginJsp";}

		// 获取表单数据
		HttpServletRequest request = ServletActionContext.getRequest();
		String name = request.getParameter("name");
		String sickness = request.getParameter("sickness");
		String age = request.getParameter("age");
		String sex = request.getParameter("sex");
		String info = request.getParameter("info");

		//添加实体
		PatientsEntity p = new PatientsEntity();
		p.setAge(Integer.parseInt(age));
		p.setInfo(info);
		p.setSex(sex);
		p.setSickness(sickness);
		p.setName(name);
		p.setDate(new Timestamp((new Date().getTime())));

		patientDAO.add(p);
		return "addJsp";
	}

	// 更新patient
	public String update(){
		return "updateJsp";
	}

	// 查找patient
	public String search(){
		return "searchJsp";
	}


	public PatientDAO getPatientDAO() {
		return patientDAO;
	}

	public void setPatientDAO(PatientDAO patientDAO) {
		this.patientDAO = patientDAO;
	}

	public List<PatientsEntity> getPatients() {
		return patients;
	}

	public void setPatients(List<PatientsEntity> patients) {
		this.patients = patients;
	}

}
