package com.how2java.dao.impl;

import com.how2java.dao.DcmDAO;
import com.how2java.pojo.DcmEntity;
import com.how2java.pojo.PatientDcmEntity;
import org.springframework.orm.hibernate3.HibernateTemplate;

import java.util.ArrayList;
import java.util.List;

public class DcmDAOImpl extends HibernateTemplate implements DcmDAO {

    @Override
    public List<DcmEntity> list(int patientId){
        List<DcmEntity> ds = new ArrayList<>();
        List<PatientDcmEntity> pds = find("from PatientDcmEntity pd where pd.patientId = ?"
            , patientId);
        for(int i = 0; i < pds.size(); i++)
        {
            List<DcmEntity> d = find("from DcmEntity d where d.id = ?"
                , pds.get(i).getDcmId());
            ds.addAll(d);
        }
        return ds;
    }
    @Override
    public DcmEntity search(int dcmId){
        List<DcmEntity> ds = find("from DcmEntity d where d.id = ?"
            , dcmId);
        if(ds.isEmpty()){return null;}
        return ds.get(0);
    }


}
