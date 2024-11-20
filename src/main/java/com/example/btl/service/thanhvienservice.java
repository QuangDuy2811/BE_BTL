package com.example.btl.service;

import com.example.btl.model.thanhvien;
import com.example.btl.repository.thanhvienrepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service

public class thanhvienservice {
    @Autowired
    private thanhvienrepository userRepository;

    public Optional<thanhvien> dangNhap(String taikhoan, String matkhau) {
        return userRepository.findByTaikhoan(taikhoan)
                .filter(user -> user.getMatkhau().equals(matkhau));
    }

    // Đăng ký người dùng mới
    public String dangKy(thanhvien user) {
        // Kiểm tra tài khoản đã tồn tại chưa
        Optional<thanhvien> existingUser = userRepository.findByTaikhoan(user.getTaikhoan());
        if (existingUser.isPresent()) {
            return "Tài khoản đã tồn tại!";
        }

        // Lưu thông tin người dùng vào cơ sở dữ liệu
        userRepository.save(user);
        return "Đăng ký thành công!";
    }
}
