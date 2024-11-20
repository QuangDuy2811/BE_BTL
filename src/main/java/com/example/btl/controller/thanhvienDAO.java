package com.example.btl.controller;

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

    @PostMapping("/dangnhap")
    public ResponseEntity<String> dangNhap(@RequestParam String taikhoan, @RequestParam String matkhau) {
        Optional<thanhvien> user = userService.dangNhap(taikhoan, matkhau);
        if (user.isPresent()) {
            return ResponseEntity.ok("Đăng nhập thành công! Chào mừng " + user.get().getTen());
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
}
