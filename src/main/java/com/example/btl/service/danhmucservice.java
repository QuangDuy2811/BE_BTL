package com.example.btl.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.btl.DTO.loaiDTO;
import com.example.btl.repository.loairepo;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class danhmucservice {

    @Autowired
    private loairepo loaiRepository;

    public List<loaiDTO> getLoaiByDanhMuc(Long madanhmuc) {
        return loaiRepository.findByDanhMucMadanhmuc(madanhmuc)
                .stream()
                .map(loai -> new loaiDTO(loai.getMaloai(), loai.getTenloai()))
                .collect(Collectors.toList());
    }
}
