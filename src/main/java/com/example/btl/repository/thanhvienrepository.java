package com.example.btl.repository;

import com.example.btl.model.thanhvien;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface thanhvienrepository extends JpaRepository<thanhvien, Long> {
    // Tìm người dùng theo tên tài khoản
    Optional<thanhvien> findByTaikhoan(String taikhoan);
}
