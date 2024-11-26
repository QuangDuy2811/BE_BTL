package com.example.btl.model;

import jakarta.persistence.*;
import java.util.Date;

@Entity
@Table(name = "sanpham")
public class sanpham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long masanpham;

    @Column(name = "tensanpham", nullable = false)
    private String tensanpham;

    @Column(name = "mota")
    private String mota;

    @Column(name = "gia", nullable = false)
    private int gia;

    @Temporal(TemporalType.DATE)
    @Column(name = "ngaysanxuat", nullable = false)
    private Date ngaysanxuat;

    @Column(name = "khuyenmai")
    private String khuyenmai;

    @Column(name = "soluong", nullable = false)
    private int soluong;

    // Quan hệ với bảng NhaCungCap
    @ManyToOne
    @JoinColumn(name = "Nhacungcapmanhacungcap", nullable = false)
    private nhacungcap nhaCungCap;

    // Quan hệ với bảng Loai
    @ManyToOne
    @JoinColumn(name = "Loaimaloai", nullable = false)
    private loai loai;

    // Getters và Setters
    public Long getMasanpham() {
        return masanpham;
    }

    public void setMasanpham(Long masanpham) {
        this.masanpham = masanpham;
    }

    public String getTensanpham() {
        return tensanpham;
    }

    public void setTensanpham(String tensanpham) {
        this.tensanpham = tensanpham;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public Date getNgaysanxuat() {
        return ngaysanxuat;
    }

    public void setNgaysanxuat(Date ngaysanxuat) {
        this.ngaysanxuat = ngaysanxuat;
    }

    public String getKhuyenmai() {
        return khuyenmai;
    }

    public void setKhuyenmai(String khuyenmai) {
        this.khuyenmai = khuyenmai;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public nhacungcap getNhaCungCap() {
        return nhaCungCap;
    }

    public void setNhaCungCap(nhacungcap nhaCungCap) {
        this.nhaCungCap = nhaCungCap;
    }

    public loai getLoai() {
        return loai;
    }

    public void setLoai(loai loai) {
        this.loai = loai;
    }
}
