package com.example.btl.model;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
@Table(name = "thanhvien") // Đặt tên bảng phù hợp với bảng trong MySQL
public class thanhvien {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Tự động tăng ID
    @Column(name = "mathanhvien") // Liên kết với cột "mathanhvien" trong bảng
    private Long mathanhvien;

    @Column(name = "ten", nullable = false) // Liên kết với cột "ten"
    private String ten;

    @Column(name = "ngaysinh", nullable = false) // Liên kết với cột "ngaysinh"
    private LocalDate ngaysinh;

    @Column(name = "taikhoan", nullable = false, unique = true) // Liên kết với cột "taikhoan"
    private String taikhoan;

    @Column(name = "matkhau", nullable = false) // Liên kết với cột "matkhau"
    private String matkhau;

    // Constructors
    public thanhvien() {
    }

    public thanhvien(String ten, LocalDate ngaysinh, String taikhoan, String matkhau) {
        this.ten = ten;
        this.ngaysinh = ngaysinh;
        this.taikhoan = taikhoan;
        this.matkhau = matkhau;
    }

    // Getters and Setters
    public Long getMathanhvien() {
        return mathanhvien;
    }

    public void setMathanhvien(Long mathanhvien) {
        this.mathanhvien = mathanhvien;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public LocalDate getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(LocalDate ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getTaikhoan() {
        return taikhoan;
    }

    public void setTaikhoan(String taikhoan) {
        this.taikhoan = taikhoan;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }
}
