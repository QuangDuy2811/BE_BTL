package com.example.btl.service;

import com.example.btl.model.khachhang;
import com.example.btl.model.thanhvien;
import com.example.btl.repository.khachhangrepository;
import com.example.btl.repository.thanhvienrepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Optional;

@Service

public class thanhvienservice {
    @Autowired
    private thanhvienrepository userRepository;

    @Autowired
    private khachhangrepository customerRepository;

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

    public Optional<khachhang> getUserInfo(String taikhoan) {
        // Tìm thành viên bằng tài khoản
        Optional<thanhvien> thanhvien = userRepository.findByTaikhoan(taikhoan);
        if (thanhvien.isPresent()) {
            // Tìm thông tin khách hàng qua `thanhvienmathanhvien`
            return customerRepository.findByThanhvienmathanhvien(thanhvien.get().getMathanhvien());
        }
        return Optional.empty();
    }

    public String updateUser(String taikhoan, String ten, LocalDate ngaysinh, String diachi) {
        // Tìm thành viên qua tài khoản
        Optional<thanhvien> optionalThanhvien = userRepository.findByTaikhoan(taikhoan);
        if (optionalThanhvien.isPresent()) {
            thanhvien user = optionalThanhvien.get();

            // Cập nhật thông tin `thanhvien`
            user.setTen(ten);
            user.setNgaysinh(ngaysinh);
            userRepository.save(user);

            // Cập nhật thông tin `khachhang`
            Optional<khachhang> optionalKhachhang = customerRepository
                    .findByThanhvienmathanhvien(user.getMathanhvien());
            if (optionalKhachhang.isPresent()) {
                khachhang customer = optionalKhachhang.get();
                customer.setDiachi(diachi);
                customerRepository.save(customer);
            } else {
                // Nếu khách hàng không tồn tại, thêm mới
                khachhang newCustomer = new khachhang();
                newCustomer.setThanhvienmathanhvien(user.getMathanhvien());
                newCustomer.setDiachi(diachi);
                customerRepository.save(newCustomer);
            }
            return "Cập nhật thông tin thành công!";
        } else {
            return "Không tìm thấy tài khoản!";
        }
    }
}
