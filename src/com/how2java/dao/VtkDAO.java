package com.how2java.dao;

import com.how2java.pojo.VtkEntity;

import java.util.List;

public interface VtkDAO {
    public List<VtkEntity> search(int patientId);
}
