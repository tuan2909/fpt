CREATE TABLE NHANVIEN
(
    manhanvien varchar(5) not null,
    tennhanvien varchar(50) null,
    matruongphong varchar(5) not null ,
    CONSTRAINT PK_NHANVIEN PRIMARY KEY(manhanvien)
    );
CREATE TABLE SANPHAM
(
    masanpham varchar(5) not null,
    diachi varchar(225) null,
    mavanphong varchar(5) not null,
    CONSTRAINT PK_SANPHAM PRIMARY KEY(masanpham)
    );
CREATE TABLE VANPHONG
(
    mavanphong varchar(5) not null,
    diadiem varchar(50) null,
    CONSTRAINT PK_VANPHONG PRIMARY KEY(mavanphong)
    );
CREATE TABLE THANNHAN
(
    mathannhan varchar(5) not null,
    tenthannhan varchar(50) null ,
    tennhanvien varchar(50) null,
    moiquanhe varchar(5) null,
    ngaysinh datetime null,
    CONSTRAINT PK_THANNHAN PRIMARY KEY(mathannhan)
    );
    CREATE TABLE CHUSOHUU
(
    machusohuu varchar(5) not null,
    tencsh varchar(50) null,
    diachicsh varchar(50) null,
    sodienthoai int null,
    CONSTRAINT PK_CHUSOHUU PRIMARY KEY(machusohuu)
    );