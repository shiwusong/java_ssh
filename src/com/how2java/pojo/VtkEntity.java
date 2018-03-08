package com.how2java.pojo;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "vtk", schema = "patient", catalog = "")
public class VtkEntity {
    private int id;
    private String path;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "path", nullable = true, length = 255)
    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        VtkEntity vtkEntity = (VtkEntity) o;
        return id == vtkEntity.id &&
                Objects.equals(path, vtkEntity.path);
    }

    @Override
    public int hashCode() {

        return Objects.hash(id, path);
    }
}
