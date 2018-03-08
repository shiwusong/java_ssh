package com.how2java.dao;

import com.how2java.pojo.DcmEntity;

import java.util.List;

public interface DcmDAO {
    public List<DcmEntity> list(int patientId);
    public DcmEntity search(int dcmId);
}
