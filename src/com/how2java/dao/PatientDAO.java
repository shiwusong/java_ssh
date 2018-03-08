package com.how2java.dao;

import com.how2java.pojo.PatientsEntity;

import java.util.List;

public interface PatientDAO {
	
	public List<PatientsEntity> list();
	public void add(PatientsEntity p);
}
