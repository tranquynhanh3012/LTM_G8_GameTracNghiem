-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 07, 2021 lúc 04:55 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gametracnghiem`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `question`
--

CREATE TABLE `question` (
  `ID` int(11) NOT NULL,
  `question` varchar(300) NOT NULL,
  `answerA` varchar(100) DEFAULT NULL,
  `answerB` varchar(100) DEFAULT NULL,
  `answerC` varchar(100) DEFAULT NULL,
  `answerD` varchar(100) DEFAULT NULL,
  `correctAnswer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `question`
--

INSERT INTO `question` (`ID`, `question`, `answerA`, `answerB`, `answerC`, `answerD`, `correctAnswer`) VALUES
(1, 'An Dương Vương đặt quốc hiệu nước ta là gì?', 'Âu Lạc', 'Vạn Xuân', 'Đại Cồ Việt', 'Đại Việt', 1),
(2, 'Đại dương nào sâu nhất?', 'Bắc Băng Dương', 'Ấn Độ Dương', 'Đại Tây Dương', 'Thái Bình Dương', 4),
(3, 'Đàn bầu còn có tên gọi nào khác', 'Đàn ghita', 'Đàn độc huyền', 'Đàn bí', 'Đàn tranh', 2),
(4, 'Con sông nào chảy qua xích đạo 2 lần?', 'Sông Ấn', 'Sông Hằng', 'Sông volga', 'Sông Công-go', 4),
(5, 'Đất nước nào có diện tích lớn nhất thế giới?', 'Nga', 'Trung Quốc', 'Ấn Độ', 'Canada', 1),
(6, 'Hành tinh lớn nhất thái dương hệ?', 'Mộc tinh', 'Hỏa tinh', 'Thiên Vương tinh', 'Hải Vương tinh', 1),
(7, 'Con sông dài nhất thế giới?', 'Sông mê kong', 'Sông Nil', 'Sông Amazon', 'Sông volga', 2),
(8, 'Dòng sông lớn nhất thế giới?', 'Sông mê kong', 'Sông Nil', 'Sông Amazon', 'Sông volga', 3),
(9, 'Tên khách của chùa Một Cột?', 'Chùa Diên Khánh', 'chùa Diên Hựu', 'Chùa Diên Phúc', 'Chùa Diên Ngọ', 2),
(10, 'Hòn đảo lớn nhất Việt Nam?', 'Cô tô', 'Cát Bà', 'Bạch Long Vỹ', 'Phú Quốc', 4),
(11, 'Chiều dài của Vạn Lý Trường Thành?', '6677 km', '6887 km', '6688 km', '6788 km', 4),
(12, 'Trong các loại vật liệu, vật nào cứng nhất?', 'Kim cương', 'Titan', 'Thép', 'Crom', 1),
(13, 'Đất nước nào phát minh ra giấy?', 'Mỹ', 'Trung Quốc', 'Ấn Độ', 'Nhật Bản', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `account` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `point` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`userID`, `account`, `password`, `status`, `point`) VALUES
(1, 'anhtq', '123456', 0, 0.5),
(2, 'dungnt', '123456', 0, 0.5),
(3, 'khanhdd', '123456', 0, 0),
(4, 'minhpn', '123456', 0, 0),
(5, 'hoangvv', '123456', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `question`
--
ALTER TABLE `question`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
