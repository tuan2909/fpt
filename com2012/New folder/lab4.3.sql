
CREATE TABLE NGANH
(
    MANGANH VARCHAR(5) NOT NULL,
    TENNGANH VARCHAR(10) NULL,
    SONAMHOC INT NULL,
    CONSTRAINT PK_NGANH PRIMARY KEY(MANGANH),
    CONSTRAINT CK_SONAMHOC CHECK(SONAMHOC >=1)
    );
CREATE TABLE MONHOC 
(
    MAMON VARCHAR(5) NOT NULL,
    TENMON VARCHAR(10) NULL,
    MOTA VARCHAR(50) NULL,
    SOTINCHI INT NULL,
    SOGIO INT NULL,
    CONSTRAINT PK_MONHOC PRIMARY KEY(MAMON),
    CONSTRAINT CK_SOTINCHI CHECK(SOTINCHI>=1),
    CONSTRAINT CK_SOGIO CHECK(SOGIO>=15)
    );
CREATE TABLE LOP
(
    MANGANH VARCHAR(5)NOT NULL,
    MALOP VARCHAR(5) NOT NULL,
    TENLOP VARCHAR(5) NULL,
    VITRI VARCHAR(50) NULL,
    CONSTRAINT PK_LOP PRIMARY KEY(MALOP),
    CONSTRAINT FK_LOP_NGANH FOREIGN KEY(MANGANH) REFERENCES NGANH(MANGANH)
    );
CREATE TABLE SV
(
    MASV VARCHAR(5) NOT NULL,
    TEN VARCHAR(50) NULL,
    DIACHI VARCHAR(225) NULL,
    EMAIL VARCHAR(50) NULL,
    DIENTHOAI VARCHAR(10) NULL,
    NSINH DATETIME NULL,
    MALOP VARCHAR(5) NOT NULL,
    CONSTRAINT PK_SV PRIMARY KEY(MASV),
    CONSTRAINT FK_SV_LOP FOREIGN KEY(MALOP) REFERENCES LOP(MALOP),
    CONSTRAINT UK_EMAIL UNIQUE(EMAIL),
    CONSTRAINT UK_DIENTHOAI UNIQUE(DIENTHOAI)
    );
CREATE TABLE BANGDIEM 
(
    MASV VARCHAR(5) NOT NULL,
    MAMON VACHAR(5) NOT NULL,
    DIEM INT NULL,
    GHICHU VARCHAR(50) NULL,
    
    CONSTRAINT FK_BANGDIEM_SV FOREIGN KEY(MASV) REFERENCES SV(MASV),
    CONSTRAINT FK_BANGDIEM_MONHOC FOREIGN KEY(MAMON) REFERENCES MONHOC(MAMON)
    );
INSERT INTO NGANH VALUES(1,'WEB',2)
INSERT INTO LOP VALUES(1,'PT14315',2)
INSERT INTO SV VALUES(1,'TUAN',2)
INSERT INTO BANGDIEM VALUES(1,9,6)

