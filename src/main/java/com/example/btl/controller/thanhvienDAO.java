package com.example.btl.controller;

import com.example.btl.model.UserUpdateRequest;
import com.example.btl.model.khachhang;
import com.example.btl.model.thanhvien;
import com.example.btl.service.thanhvienservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/api")
public class thanhvienDAO {
    @Autowired
    private thanhvienservice userService;

    // API đăng nhập
    @PostMapping("/dangnhap")
    public ResponseEntity<String> dangNhap(@RequestParam String taikhoan, @RequestParam String matkhau) {
        Optional<thanhvien> user = userService.dangNhap(taikhoan, matkhau);
        if (user.isPresent()) {
            return ResponseEntity.ok("Đăng nhập thành công!");
        } else {
            return ResponseEntity.status(401).body("Sai tài khoản hoặc mật khẩu!");
        }
    }

    // API đăng ký
    @PostMapping("/dangky")
    public ResponseEntity<String> dangKy(@RequestBody thanhvien user) {
        String result = userService.dangKy(user);
        if (result.equals("Đăng ký thành công!")) {
            return ResponseEntity.ok(result);
        } else {
            return ResponseEntity.status(400).body(result); // Nếu tài khoản đã tồn tại
        }
    }

    // API lấy thông tin người dùng
    @GetMapping("/nguoidung")
    public ResponseEntity<?> getUserInfo(@RequestParam String taikhoan) {
        try {
            Optional<khachhang> customer = userService.getUserInfo(taikhoan);
            if (customer.isPresent()) {
                return ResponseEntity.ok(customer.get().getThanhVien().getTen() + " "
                        + customer.get().getThanhVien().getNgaysinh() + " " + customer.get().getDiachi());
            } else {
                return ResponseEntity.status(404).body("Không tìm thấy người dùng!");
            }
        } catch (Exception e) {
            return ResponseEntity.status(500).body("Lỗi server: " + e.getMessage());
        }
    }

    // API cập nhật thông tin người dùng
    @PutMapping("/update")
    public ResponseEntity<String> updateUser(@RequestBody UserUpdateRequest request) {
        String result = userService.updateUser(request.getTaikhoan(), request.getHoten(), request.getNgaysinh(),
                request.getDiachi());
        if (result.equals("Cập nhật thông tin thành công!")) {
            return ResponseEntity.ok(result);
        } else {
            return ResponseEntity.status(404).body(result);
        }
    }
}
