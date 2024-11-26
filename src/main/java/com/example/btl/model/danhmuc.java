package com.example.btl.model;

import jakarta.persistence.*;
import java.util.List;

@Entity
@Table(name = "danhmuc")
public class danhmuc {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long madanhmuc;

    @Column(nullable = false, unique = true)
    private String tendanhmuc;

    @OneToMany(mappedBy = "danhMuc", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<loai> loaiList;

    // Getters and Setters
    public Long getMadanhmuc() {
        return madanhmuc;
    }

    public void setMadanhmuc(Long madanhmuc) {
        this.madanhmuc = madanhmuc;
    }

    public String getTendanhmuc() {
        return tendanhmuc;
    }

    public void setTendanhmuc(String tendanhmuc) {
        this.tendanhmuc = tendanhmuc;
    }

    public List<loai> getLoaiList() {
        return loaiList;
    }

    public void setLoaiList(List<loai> loaiList) {
        this.loaiList = loaiList;
    }
}
