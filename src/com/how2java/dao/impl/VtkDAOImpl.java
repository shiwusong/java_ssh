package com.how2java.dao.impl;

import com.how2java.dao.VtkDAO;
import com.how2java.pojo.PatientVtkEntity;
import com.how2java.pojo.VtkEntity;
import org.springframework.orm.hibernate3.HibernateTemplate;

import java.util.ArrayList;
import java.util.List;

public class VtkDAOImpl extends HibernateTemplate implements VtkDAO {

    @Override
    public List<VtkEntity> search(int patientId){

        List<PatientVtkEntity> pvs = find("from PatientVtkEntity pv where pv.patientId = ?",patientId);
        List<VtkEntity> vs = new ArrayList<>();
        for(int i = 0; i < pvs.size(); i++)
        {
            List<VtkEntity> v = find("from VtkEntity v where v.id = ?"
                    ,pvs.get(i).getVtkId() );
            vs.addAll(v);
        }
        return vs;
    }
}
