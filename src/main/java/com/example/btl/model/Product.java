package com.example.btl.product;

import jakarta.persistence.*;
import lombok.Data;

import java.util.Date;

@Data
@Entity
@Table(name = "sanpham")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int masanpham;

    @Column(nullable = false)
    private String tensanpham;

    @Column(nullable = false)
    private String mota;

    @Column(nullable = false)
    private String gia;

    @Column(nullable = false)
    private Date ngaysanxuat;

    @Column(nullable = false)
    private String khuyenMai;

    @Column(nullable = false)
    private String soluong;

    @Column(nullable = false)
    private int Nhacungcapmanhacungcap;

    @Column(nullable = false)
    private int Loaimaloai;
}
