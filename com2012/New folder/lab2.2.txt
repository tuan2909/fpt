CREATE TABLE KHACHHANG
(
    makhachhang varchar(5) not null,
    hovatenlot varchar(50) null,
    ten varchar(50) null,
    diachi varchar(225) null,
    email varchar(50) null,
    dienthoai varchar(13) null, 
    CONSTRAINT PK_KHACHHANG PRIMARY KEY(makhachhang)
    )
CREATE TABLE SANPHAM
(
    masanpham int not null AUTO_INCREMENT,
    mota varchar(255) null,
    soluong int null,
    dongia int null,
    tenSP int null,
    CONSTRAINT PK_SANPHAM PRIMARY KEY(masanpham),
    CONSTRAINT CK_soluong CHECK(soluong>=0),
    CONSTRAINT CK_dongia CHECK(dongia>=0)
    )
CREATE TABLE HOADON
(
    mahoadon  int not null,
    ngaymuahang date null,
    makhachhang varchar(5) not null,
    trangthai varchar(30) null,
     CONSTRAINT PK_HOADON PRIMARY KEY(mahoadon),
   CONSTRAINT FK_HOADON_KHACHHANG FOREIGN KEY(makhachhang) REFERENCES KHACHHANG(makhachhang)
    )
CREATE TABLE HOADONCHITIET
(
    mahoadon int not null,
    masanpham int not null,
    soluong int null,
    mahoadonchitiet int not null AUTO_INCREMENT,
    CONSTRAINT PK_HOADONCHITIET PRIMARY KEY(mahoadonchitiet),
    CONSTRAINT FK_HOADONCHITIET_SANPHAM FOREIGN KEY(masanpham) REFERENCES SANPHAM(masanpham),
    CONSTRAINT FK_HOADONCHITIET_HOADON FOREIGN KEY(mahoadon) REFERENCES HOADON(mahoadon)
    
    )