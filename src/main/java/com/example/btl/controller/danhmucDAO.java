package com.example.btl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.example.btl.DTO.loaiDTO;
import com.example.btl.service.danhmucservice;

import java.util.List;

@RestController
@RequestMapping("/api/danhmuc")
public class danhmucDAO {

    @Autowired
    private danhmucservice danhMucService;

    @GetMapping("/{madanhmuc}/loai")
    public ResponseEntity<?> getLoaiByDanhMuc(@PathVariable Long madanhmuc) {
        List<loaiDTO> loaiList = danhMucService.getLoaiByDanhMuc(madanhmuc);
        if (loaiList.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Không tìm thấy danh mục hoặc danh mục không có loại nào.");
        }
        return ResponseEntity.ok(loaiList);
    }
}
