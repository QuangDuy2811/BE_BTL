package com.example.btl.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;
import com.example.btl.model.khachhang;

public interface khachhangrepository extends JpaRepository<khachhang, Long> {
    Optional<khachhang> findByThanhvienmathanhvien(Long thanhvienmathanhvien);
}