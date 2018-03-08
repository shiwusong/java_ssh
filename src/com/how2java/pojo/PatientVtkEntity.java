package com.how2java.pojo;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "patientVtk", schema = "patient", catalog = "")
public class PatientVtkEntity {
    private int id;
    private Integer patientId;
    private Integer vtkId;

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
    @Column(name = "vtkId", nullable = true)
    public Integer getVtkId() {
        return vtkId;
    }

    public void setVtkId(Integer vtkId) {
        this.vtkId = vtkId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PatientVtkEntity that = (PatientVtkEntity) o;
        return id == that.id &&
                Objects.equals(patientId, that.patientId) &&
                Objects.equals(vtkId, that.vtkId);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, patientId, vtkId);
    }
}
