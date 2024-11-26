-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: btl
-- ------------------------------------------------------
-- Server version	8.4.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `binhluan`
--

DROP TABLE IF EXISTS `binhluan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binhluan` (
  `mabinhluan` int NOT NULL,
  `binhluan` varchar(255) NOT NULL,
  `KhachHangThanhvienmathanhvien` int NOT NULL,
  `Sanphammasanpham` int NOT NULL,
  PRIMARY KEY (`mabinhluan`),
  KEY `FKBinhluan947823` (`Sanphammasanpham`),
  KEY `FKBinhluan297379` (`KhachHangThanhvienmathanhvien`),
  CONSTRAINT `FKBinhluan297379` FOREIGN KEY (`KhachHangThanhvienmathanhvien`) REFERENCES `khachhang` (`Thanhvienmathanhvien`),
  CONSTRAINT `FKBinhluan881716` FOREIGN KEY (`mabinhluan`) REFERENCES `khachhang` (`Thanhvienmathanhvien`),
  CONSTRAINT `FKBinhluan947823` FOREIGN KEY (`Sanphammasanpham`) REFERENCES `sanpham` (`masanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binhluan`
--

LOCK TABLES `binhluan` WRITE;
/*!40000 ALTER TABLE `binhluan` DISABLE KEYS */;
/*!40000 ALTER TABLE `binhluan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhgia`
--

DROP TABLE IF EXISTS `danhgia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhgia` (
  `madanhgia` int NOT NULL,
  `sosao` int NOT NULL,
  `KhachHangThanhvienmathanhvien` int NOT NULL,
  `Sanphammasanpham` int NOT NULL,
  PRIMARY KEY (`madanhgia`),
  KEY `FKDanhgia54840` (`Sanphammasanpham`),
  KEY `FKDanhgia705284` (`KhachHangThanhvienmathanhvien`),
  CONSTRAINT `FKDanhgia346653` FOREIGN KEY (`madanhgia`) REFERENCES `sanpham` (`masanpham`),
  CONSTRAINT `FKDanhgia528486` FOREIGN KEY (`madanhgia`) REFERENCES `khachhang` (`Thanhvienmathanhvien`),
  CONSTRAINT `FKDanhgia528487` FOREIGN KEY (`madanhgia`) REFERENCES `khachhang` (`Thanhvienmathanhvien`),
  CONSTRAINT `FKDanhgia54840` FOREIGN KEY (`Sanphammasanpham`) REFERENCES `sanpham` (`masanpham`),
  CONSTRAINT `FKDanhgia705284` FOREIGN KEY (`KhachHangThanhvienmathanhvien`) REFERENCES `khachhang` (`Thanhvienmathanhvien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhgia`
--

LOCK TABLES `danhgia` WRITE;
/*!40000 ALTER TABLE `danhgia` DISABLE KEYS */;
/*!40000 ALTER TABLE `danhgia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danhmuc` (
  `madanhmuc` int NOT NULL AUTO_INCREMENT,
  `tendanhmuc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`madanhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danhmuc`
--

LOCK TABLES `danhmuc` WRITE;
/*!40000 ALTER TABLE `danhmuc` DISABLE KEYS */;
INSERT INTO `danhmuc` VALUES (1,'Giày thể thao'),(2,'Quần áo thể thao'),(3,'Phụ kiện thể thao'),(4,'Dụng cụ tập gym');
/*!40000 ALTER TABLE `danhmuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dondat`
--

DROP TABLE IF EXISTS `dondat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dondat` (
  `madondat` int NOT NULL AUTO_INCREMENT,
  `tongtien` int NOT NULL,
  `trangthai` varchar(255) NOT NULL,
  PRIMARY KEY (`madondat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dondat`
--

LOCK TABLES `dondat` WRITE;
/*!40000 ALTER TABLE `dondat` DISABLE KEYS */;
/*!40000 ALTER TABLE `dondat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donhangchitiet`
--

DROP TABLE IF EXISTS `donhangchitiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhangchitiet` (
  `madonhangchitiet` int NOT NULL,
  `Sanphammasanpham` int NOT NULL,
  `Dondatmadondat` int NOT NULL,
  KEY `FKDonhangchi598106` (`Dondatmadondat`),
  KEY `FKDonhangchi879672` (`Sanphammasanpham`),
  CONSTRAINT `FKDonhangchi598106` FOREIGN KEY (`Dondatmadondat`) REFERENCES `dondat` (`madondat`),
  CONSTRAINT `FKDonhangchi879672` FOREIGN KEY (`Sanphammasanpham`) REFERENCES `sanpham` (`masanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhangchitiet`
--

LOCK TABLES `donhangchitiet` WRITE;
/*!40000 ALTER TABLE `donhangchitiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `donhangchitiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `mahoadon` int NOT NULL AUTO_INCREMENT,
  `ngayxuat` date NOT NULL,
  `thanhtien` int NOT NULL,
  `Dondatmadondat` int NOT NULL,
  PRIMARY KEY (`mahoadon`),
  KEY `FKHoadon61981` (`Dondatmadondat`),
  CONSTRAINT `FKHoadon61981` FOREIGN KEY (`Dondatmadondat`) REFERENCES `dondat` (`madondat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `Thanhvienmathanhvien` int NOT NULL,
  `diachi` varchar(255) NOT NULL,
  PRIMARY KEY (`Thanhvienmathanhvien`),
  CONSTRAINT `FKKhachHang521909` FOREIGN KEY (`Thanhvienmathanhvien`) REFERENCES `thanhvien` (`mathanhvien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (12345,'Hong Kong'),(12346,'456 Le Loi'),(12347,'789 Tran Hung Dao');
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai` (
  `maloai` int NOT NULL AUTO_INCREMENT,
  `tenloai` varchar(255) DEFAULT NULL,
  `DanhMucmadanhmuc` int NOT NULL,
  PRIMARY KEY (`maloai`),
  KEY `FKLoai988676` (`DanhMucmadanhmuc`),
  CONSTRAINT `FKLoai988676` FOREIGN KEY (`DanhMucmadanhmuc`) REFERENCES `danhmuc` (`madanhmuc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai`
--

LOCK TABLES `loai` WRITE;
/*!40000 ALTER TABLE `loai` DISABLE KEYS */;
INSERT INTO `loai` VALUES (1,'Giày chạy bộ',1),(2,'Giày đá bóng',1),(3,'Áo bóng đá',2),(4,'Quần gym',2),(5,'Găng tay thể thao',3),(6,'Dây nhảy',4);
/*!40000 ALTER TABLE `loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `manhacungcap` int NOT NULL AUTO_INCREMENT,
  `tennhacungcap` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`manhacungcap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `vitri` varchar(255) DEFAULT NULL,
  `Thanhvienmathanhvien` int NOT NULL,
  KEY `FKNhanvien525866` (`Thanhvienmathanhvien`),
  CONSTRAINT `FKNhanvien525866` FOREIGN KEY (`Thanhvienmathanhvien`) REFERENCES `thanhvien` (`mathanhvien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanpham` (
  `masanpham` int NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `gia` int DEFAULT NULL,
  `ngaysanxuat` date NOT NULL,
  `khuyenmai` int DEFAULT NULL,
  `soluong` int DEFAULT NULL,
  `Nhacungcapmanhacungcap` int NOT NULL,
  `Loaimaloai` int NOT NULL,
  PRIMARY KEY (`masanpham`),
  KEY `FKSanpham205595` (`Loaimaloai`),
  KEY `FKSanpham46113` (`Nhacungcapmanhacungcap`),
  CONSTRAINT `FKSanpham205595` FOREIGN KEY (`Loaimaloai`) REFERENCES `loai` (`maloai`),
  CONSTRAINT `FKSanpham46113` FOREIGN KEY (`Nhacungcapmanhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanpham`
--

LOCK TABLES `sanpham` WRITE;
/*!40000 ALTER TABLE `sanpham` DISABLE KEYS */;
/*!40000 ALTER TABLE `sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thanhvien`
--

DROP TABLE IF EXISTS `thanhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thanhvien` (
  `mathanhvien` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `taikhoan` varchar(255) DEFAULT NULL,
  `matkhau` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mathanhvien`)
) ENGINE=InnoDB AUTO_INCREMENT=12348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thanhvien`
--

LOCK TABLES `thanhvien` WRITE;
/*!40000 ALTER TABLE `thanhvien` DISABLE KEYS */;
INSERT INTO `thanhvien` VALUES (12345,'Nguyen Van A','1994-06-18','nguyenvana','matkhau123'),(12346,'Nguyen Van B','1995-06-01','nguyenvanb','password123'),(12347,'Nguyen Van C','1995-06-01','nguyenvanc','password123');
/*!40000 ALTER TABLE `thanhvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongso`
--

DROP TABLE IF EXISTS `thongso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongso` (
  `mathongso` int NOT NULL AUTO_INCREMENT,
  `tenloaithongso` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mathongso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongso`
--

LOCK TABLES `thongso` WRITE;
/*!40000 ALTER TABLE `thongso` DISABLE KEYS */;
/*!40000 ALTER TABLE `thongso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongsochitiet`
--

DROP TABLE IF EXISTS `thongsochitiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongsochitiet` (
  `mathongsochitiet` int NOT NULL AUTO_INCREMENT,
  `thongsochitiet` varchar(255) NOT NULL,
  `Sanphammasanpham` int NOT NULL,
  `Thongsomathongso` int NOT NULL,
  PRIMARY KEY (`mathongsochitiet`),
  KEY `FKThongsochi309168` (`Thongsomathongso`),
  KEY `FKThongsochi168433` (`Sanphammasanpham`),
  CONSTRAINT `FKThongsochi168433` FOREIGN KEY (`Sanphammasanpham`) REFERENCES `sanpham` (`masanpham`),
  CONSTRAINT `FKThongsochi309168` FOREIGN KEY (`Thongsomathongso`) REFERENCES `thongso` (`mathongso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongsochitiet`
--

LOCK TABLES `thongsochitiet` WRITE;
/*!40000 ALTER TABLE `thongsochitiet` DISABLE KEYS */;
/*!40000 ALTER TABLE `thongsochitiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkdoanhthu`
--

DROP TABLE IF EXISTS `tkdoanhthu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tkdoanhthu` (
  `Hoadonmahoadon` int NOT NULL,
  KEY `FKTKDoanhthu98737` (`Hoadonmahoadon`),
  CONSTRAINT `FKTKDoanhthu98737` FOREIGN KEY (`Hoadonmahoadon`) REFERENCES `hoadon` (`mahoadon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkdoanhthu`
--

LOCK TABLES `tkdoanhthu` WRITE;
/*!40000 ALTER TABLE `tkdoanhthu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tkdoanhthu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tksanpham`
--

DROP TABLE IF EXISTS `tksanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tksanpham` (
  `Sanphammasanpham` int NOT NULL,
  KEY `FKTKSanpham724959` (`Sanphammasanpham`),
  CONSTRAINT `FKTKSanpham724959` FOREIGN KEY (`Sanphammasanpham`) REFERENCES `sanpham` (`masanpham`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tksanpham`
--

LOCK TABLES `tksanpham` WRITE;
/*!40000 ALTER TABLE `tksanpham` DISABLE KEYS */;
/*!40000 ALTER TABLE `tksanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `mathanhvien` int NOT NULL AUTO_INCREMENT,
  `matkhau` varchar(255) NOT NULL,
  `ngaysinh` date NOT NULL,
  `taikhoan` varchar(255) NOT NULL,
  `ten` varchar(255) NOT NULL,
  PRIMARY KEY (`mathanhvien`),
  UNIQUE KEY `UKtft53blenbrxsijgrqax38p2g` (`taikhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'btl'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 20:07:01
