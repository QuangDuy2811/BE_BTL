package com.example.btl.model;

import jakarta.persistence.*;

@Entity
@Table(name = "loai")
public class loai {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long maloai;

    @Column(nullable = false)
    private String tenloai;

    @ManyToOne
    @JoinColumn(name = "DanhMucmadanhmuc", nullable = false)
    private danhmuc danhMuc;

    // Getters and Setters
    public Long getMaloai() {
        return maloai;
    }

    public void setMaloai(Long maloai) {
        this.maloai = maloai;
    }

    public String getTenloai() {
        return tenloai;
    }

    public void setTenloai(String tenloai) {
        this.tenloai = tenloai;
    }

    public danhmuc getDanhMuc() {
        return danhMuc;
    }

    public void setDanhMuc(danhmuc danhMuc) {
        this.danhMuc = danhMuc;
    }
}
