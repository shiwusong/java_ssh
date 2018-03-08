package com.how2java.pojo;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "patientDCM", schema = "patient", catalog = "")
public class PatientDcmEntity {
    private int id;
    private Integer patientId;
    private Integer dcmId;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "patientId", nullable = true)
    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    @Basic
    @Column(name = "DCMId", nullable = true)
    public Integer getDcmId() {
        return dcmId;
    }

    public void setDcmId(Integer dcmId) {
        this.dcmId = dcmId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PatientDcmEntity that = (PatientDcmEntity) o;
        return id == that.id &&
                Objects.equals(patientId, that.patientId) &&
                Objects.equals(dcmId, that.dcmId);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, patientId, dcmId);
    }
}
