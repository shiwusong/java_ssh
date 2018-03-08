package com.how2java.dao.impl;

import com.how2java.dao.PatientDAO;
import com.how2java.pojo.PatientsEntity;
import org.springframework.orm.hibernate3.HibernateTemplate;

import java.util.List;

public class PatientDAOImpl extends HibernateTemplate implements PatientDAO{
	
	public List<PatientsEntity> list() {
		return find("from PatientsEntity");
	}

	@Override
	public void add(PatientsEntity p) {
		save(p);
	}
	
}
