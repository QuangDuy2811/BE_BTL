package com.example.btl.model;

import jakarta.persistence.*;

@Entity
@Table(name = "nhacungcap") // Đặt tên bảng phù hợp với bảng trong MySQL
public class nhacungcap {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) // Tự động tăng ID
    @Column(name = "matnhacungcap")
    private Long manhacungcap;

    @Column(name = "tennhacungcap", nullable = false)
    private String tennhacungcap;

    @Column(name = "diachi", nullable = false)
    private String diachi;

    @Column(name = "mota", nullable = false)
    private String mota;

    @Column(name = "email", nullable = false)
    private String email;

    // Constructors
    public nhacungcap() {
    }

    public nhacungcap(String tennhacungcap, String diachi, String mota, String email) {
        this.tennhacungcap = tennhacungcap;
        this.diachi = diachi;
        this.mota = mota;
        this.email = email;
    }

    // Getters and Setters
    public Long getManhacungcap() {
        return manhacungcap;
    }

    public void setMathanhvien(Long manhacungcap) {
        this.manhacungcap = manhacungcap;
    }

    public String getTennhacungcap() {
        return tennhacungcap;
    }

    public void setTennhacungcap(String tennhacungcap) {
        this.tennhacungcap = tennhacungcap;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

}
