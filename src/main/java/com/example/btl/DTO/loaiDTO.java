package com.example.btl.DTO;

public class loaiDTO {
    private Long maloai;
    private String tenloai;

    public loaiDTO(Long maloai, String tenloai) {
        this.maloai = maloai;
        this.tenloai = tenloai;
    }

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
}
