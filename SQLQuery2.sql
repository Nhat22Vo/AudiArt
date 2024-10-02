

use XTH_NHOM12_AudiArt


CREATE TABLE nguoidung (
    id_nd INT PRIMARY KEY IDENTITY(1,1),
    ten_dang_nhap NVARCHAR(50)  NOT NULL,
    mat_khau VARCHAR(20) NOT NULL,
    ho NVARCHAR(25),
    ten NVARCHAR(25),
    vai_tro NVARCHAR(50),
    email VARCHAR(50) NOT NULL,
    dia_chi NVARCHAR(255),
    mo_ta NVARCHAR(150),
    hinh_anh NVARCHAR(100),
    ma_vi VARCHAR(50),
	private_key VARCHAR(50),
    ngay_tao DATETIME,
    trang_thai INT DEFAULT 1
);



CREATE TABLE quantri (
    id_qt INT PRIMARY KEY IDENTITY(1,1),
    ten_dang_nhap NVARCHAR(50)  NOT NULL,
    mat_khau VARCHAR(20) NOT NULL,
    ho NVARCHAR(25),
    ten NVARCHAR(25),
    vai_tro NVARCHAR(50),
    email VARCHAR(50) NOT NULL,
    dia_chi NVARCHAR(255),
    mo_ta NVARCHAR(150),
    hinh_anh NVARCHAR(100),
    ma_vi VARCHAR(50),
    ngay_tao DATETIME,
    trang_thai INT DEFAULT 1
);

CREATE TABLE nghesi (
    id_ns INT PRIMARY KEY IDENTITY(1,1),
    ten_dang_nhap NVARCHAR(50)  NOT NULL,
    mat_khau VARCHAR(20) NOT NULL,
    ho NVARCHAR(25),
    ten NVARCHAR(25),
    vai_tro NVARCHAR(50),
    email VARCHAR(50) NOT NULL,
    dia_chi NVARCHAR(255),
    mo_ta NVARCHAR(150),
    hinh_anh NVARCHAR(100),
    ma_vi VARCHAR(50),
    ngay_tao DATETIME,
    nguoi_them INT,
    trang_thai INT DEFAULT 1,
    CONSTRAINT fk_nguoi_them FOREIGN KEY (nguoi_them) REFERENCES quantri(id_qt)
);





CREATE TABLE baihat (
    id_baihat INT PRIMARY KEY IDENTITY(1,1),
    ma_bai_hat NVARCHAR(10),
    tieu_de VARCHAR(255) NOT NULL,
    file_midi_beat VARCHAR(255),
    ngay_phat_hanh DATE,
    hinh_anh NVARCHAR(100),
    nguoi_tao INT,
    so_luot_nghe INT,
    so_luot_thich INT,
    the_loai NVARCHAR(50),
    trang_thai INT DEFAULT 1,
    CONSTRAINT fk_nguoi_tao FOREIGN KEY (nguoi_tao) REFERENCES nghesi(id_ns)
);

CREATE TABLE hoatdong (
    id_hd INT PRIMARY KEY IDENTITY(1,1),
    id_nd INT,
    hanh_dong NVARCHAR(50),
    ma_bai_hat INT,
    ngay_tao DATETIME,
    CONSTRAINT fk_id_nd FOREIGN KEY (id_nd) REFERENCES nguoidung(id_nd),
    CONSTRAINT fk_ma_bai_hat FOREIGN KEY (ma_bai_hat) REFERENCES baihat(id_baihat)
);



INSERT INTO quantri (ten_dang_nhap, mat_khau, ho, ten, vai_tro, email, dia_chi, mo_ta, hinh_anh, ma_vi, ngay_tao)
VALUES 
('admin1', 'password123', 'Nguyen', 'QuanTri1', 'Admin', 'admin1@example.com', '123 Admin St.', 'System Administrator', 'admin1.jpg', 'admin_wallet_1', GETDATE()),
('admin2', 'password456', 'Pham', 'QuanTri2', 'Admin', 'admin2@example.com', '124 Admin St.', 'System Administrator', 'admin2.jpg', 'admin_wallet_2', GETDATE()),
('admin3', 'password789', 'Nguyen', 'QuanTri3', 'Admin', 'admin3@example.com', '125 Admin St.', 'System Administrator', 'admin3.jpg', 'admin_wallet_3', GETDATE()),
('admin4', 'password012', 'Tran', 'QuanTri4', 'Admin', 'admin4@example.com', '126 Admin St.', 'System Administrator', 'admin4.jpg', 'admin_wallet_4', GETDATE()),
('admin5', 'password345', 'Le', 'QuanTri5', 'Admin', 'admin5@example.com', '127 Admin St.', 'System Administrator', 'admin5.jpg', 'admin_wallet_5', GETDATE()),
('admin6', 'password678', 'Ho', 'QuanTri6', 'Admin', 'admin6@example.com', '128 Admin St.', 'System Administrator', 'admin6.jpg', 'admin_wallet_6', GETDATE()),
('admin7', 'password901', 'Vu', 'QuanTri7', 'Admin', 'admin7@example.com', '129 Admin St.', 'System Administrator', 'admin7.jpg', 'admin_wallet_7', GETDATE()),
('admin8', 'password234', 'Dinh', 'QuanTri8', 'Admin', 'admin8@example.com', '130 Admin St.', 'System Administrator', 'admin8.jpg', 'admin_wallet_8', GETDATE()),
('admin9', 'password567', 'Ngoc', 'QuanTri9', 'Admin', 'admin9@example.com', '131 Admin St.', 'System Administrator', 'admin9.jpg', 'admin_wallet_9', GETDATE()),
('admin10', 'password890', 'Hoa', 'QuanTri10', 'Admin', 'admin10@example.com', '132 Admin St.', 'System Administrator', 'admin10.jpg', 'admin_wallet_10', GETDATE());

INSERT INTO nghesi (ten_dang_nhap, mat_khau, ho, ten, vai_tro, email, dia_chi, mo_ta, hinh_anh, ma_vi, ngay_tao, nguoi_them)
VALUES 
('artist1', 'password123', 'Le', 'Nghesi1', 'Artist', 'artist1@example.com', '456 Artist Ave.', 'Popular Artist', 'artist1.jpg', 'artist_wallet_1', GETDATE(), 1),
('artist2', 'password456', 'Vu', 'Nghesi2', 'Artist', 'artist2@example.com', '457 Artist Ave.', 'Emerging Artist', 'artist2.jpg', 'artist_wallet_2', GETDATE(), 1),
('artist3', 'password789', 'Tran', 'Nghesi3', 'Artist', 'artist3@example.com', '458 Artist Ave.', 'Rising Star', 'artist3.jpg', 'artist_wallet_3', GETDATE(), 2),
('artist4', 'password012', 'Ngo', 'Nghesi4', 'Artist', 'artist4@example.com', '459 Artist Ave.', 'Famous Artist', 'artist4.jpg', 'artist_wallet_4', GETDATE(), 2),
('artist5', 'password345', 'Ho', 'Nghesi5', 'Artist', 'artist5@example.com', '460 Artist Ave.', 'Newcomer', 'artist5.jpg', 'artist_wallet_5', GETDATE(), 3),
('artist6', 'password678', 'Dao', 'Nghesi6', 'Artist', 'artist6@example.com', '461 Artist Ave.', 'Influential Artist', 'artist6.jpg', 'artist_wallet_6', GETDATE(), 3),
('artist7', 'password901', 'Bui', 'Nghesi7', 'Artist', 'artist7@example.com', '462 Artist Ave.', 'Award-Winning Artist', 'artist7.jpg', 'artist_wallet_7', GETDATE(), 4),
('artist8', 'password234', 'Nguyen', 'Nghesi8', 'Artist', 'artist8@example.com', '463 Artist Ave.', 'Popular Singer', 'artist8.jpg', 'artist_wallet_8', GETDATE(), 4),
('artist9', 'password567', 'Pham', 'Nghesi9', 'Artist', 'artist9@example.com', '464 Artist Ave.', 'Hitmaker', 'artist9.jpg', 'artist_wallet_9', GETDATE(), 5),
('artist10', 'password890', 'Duong', 'Nghesi10', 'Artist', 'artist10@example.com', '465 Artist Ave.', 'Concert Performer', 'artist10.jpg', 'artist_wallet_10', GETDATE(), 5);

INSERT INTO nguoidung (ten_dang_nhap, mat_khau, ho, ten, vai_tro, email, dia_chi, mo_ta, hinh_anh, ma_vi, ngay_tao)
VALUES 
('user1', 'password123', 'Tran', 'NguoiDung1', 'User', 'user1@example.com', '789 User Rd.', 'Regular User', 'user1.jpg', 'user_wallet_1', GETDATE()),
('user2', 'password456', 'Le', 'NguoiDung2', 'User', 'user2@example.com', '790 User Rd.', 'Regular User', 'user2.jpg', 'user_wallet_2', GETDATE()),
('user3', 'password789', 'Ngo', 'NguoiDung3', 'User', 'user3@example.com', '791 User Rd.', 'Regular User', 'user3.jpg', 'user_wallet_3', GETDATE()),
('user4', 'password012', 'Vu', 'NguoiDung4', 'User', 'user4@example.com', '792 User Rd.', 'Regular User', 'user4.jpg', 'user_wallet_4', GETDATE()),
('user5', 'password345', 'Dinh', 'NguoiDung5', 'User', 'user5@example.com', '793 User Rd.', 'Regular User', 'user5.jpg', 'user_wallet_5', GETDATE()),
('user6', 'password678', 'Ngoc', 'NguoiDung6', 'User', 'user6@example.com', '794 User Rd.', 'Regular User', 'user6.jpg', 'user_wallet_6', GETDATE()),
('user7', 'password901', 'Hoa', 'NguoiDung7', 'User', 'user7@example.com', '795 User Rd.', 'Regular User', 'user7.jpg', 'user_wallet_7', GETDATE()),
('user8', 'password234', 'Ho', 'NguoiDung8', 'User', 'user8@example.com', '796 User Rd.', 'Regular User', 'user8.jpg', 'user_wallet_8', GETDATE()),
('user9', 'password567', 'Dao', 'NguoiDung9', 'User', 'user9@example.com', '797 User Rd.', 'Regular User', 'user9.jpg', 'user_wallet_9', GETDATE()),
('user10', 'password890', 'Bui', 'NguoiDung10', 'User', 'user10@example.com', '798 User Rd.', 'Regular User', 'user10.jpg', 'user_wallet_10', GETDATE());

INSERT INTO baihat (ma_bai_hat, tieu_de, file_midi_beat, ngay_phat_hanh, hinh_anh, nguoi_tao, so_luot_nghe, so_luot_thich, the_loai)
VALUES 
('BH001', 'Song 1', 'song1.mid', '2023-07-01', 'song1.jpg', 1, 100, 50, 'Pop'),
('BH002', 'Song 2', 'song2.mid', '2023-08-01', 'song2.jpg', 1, 150, 70, 'Rock'),
('BH003', 'Song 3', 'song3.mid', '2023-09-01', 'song3.jpg', 2, 200, 90, 'Jazz'),
('BH004', 'Song 4', 'song4.mid', '2023-10-01', 'song4.jpg', 2, 250, 110, 'Classical'),
('BH005', 'Song 5', 'song5.mid', '2023-11-01', 'song5.jpg', 3, 300, 130, 'Electronic'),
('BH006', 'Song 6', 'song6.mid', '2023-12-01', 'song6.jpg', 3, 350, 150, 'Hip-Hop'),
('BH007', 'Song 7', 'song7.mid', '2024-01-01', 'song7.jpg', 4, 400, 170, 'Reggae'),
('BH008', 'Song 8', 'song8.mid', '2024-02-01', 'song8.jpg', 4, 450, 190, 'Blues'),
('BH009', 'Song 9', 'song9.mid', '2024-03-01', 'song9.jpg', 5, 500, 210, 'Folk'),
('BH010', 'Song 10', 'song10.mid', '2024-04-01', 'song10.jpg', 5, 550, 230, 'Metal');
create delete baihat 'BH001'

INSERT INTO hoatdong (id_nd, hanh_dong, ma_bai_hat, ngay_tao)
VALUES 
(1, 'Like', 1, GETDATE()),
(2, 'Share', 2, GETDATE()),
(3, 'Comment', 3, GETDATE()),
(4, 'Like', 4, GETDATE()),
(5, 'Share', 5, GETDATE()),
(6, 'Comment', 6, GETDATE()),
(7, 'Like', 7, GETDATE()),
(8, 'Share', 8, GETDATE()),
(9, 'Comment', 9, GETDATE()),
(10, 'Like', 10, GETDATE());

