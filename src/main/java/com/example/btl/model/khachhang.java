package com.example.btl.model;

import jakarta.persistence.*;

@Entity
@Table(name = "khachhang")
public class khachhang {

    @Id
    private Long thanhvienmathanhvien; // Khóa chính, tham chiếu đến `thanhvien.mathanhvien`

    @Column(nullable = false)
    private String diachi;

    @OneToOne
    @MapsId // Sử dụng mathanhvien làm khóa chính
    @JoinColumn(name = "thanhvienmathanhvien")
    private thanhvien thanhVien;

    // Getters và setters
    public Long getThanhvienmathanhvien() {
        return thanhvienmathanhvien;
    }

    public void setThanhvienmathanhvien(Long thanhvienmathanhvien) {
        this.thanhvienmathanhvien = thanhvienmathanhvien;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public thanhvien getThanhVien() {
        return thanhVien;
    }

    public void setThanhVien(thanhvien thanhVien) {
        this.thanhVien = thanhVien;
    }
}
