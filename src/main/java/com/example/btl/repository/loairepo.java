package com.example.btl.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.btl.model.loai;

import java.util.List;

public interface loairepo extends JpaRepository<loai, Long> {
    List<loai> findByDanhMucMadanhmuc(Long madanhmuc);
}
