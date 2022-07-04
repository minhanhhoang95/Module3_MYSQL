use quanlydiemthi;
CREATE TABLE hocsinh (
    MAHS VARCHAR(20) PRIMARY KEY,
    TenHS VARCHAR(50),
    NgaySinh DATETIME,
    Lop VARCHAR(20),
    GT VARCHAR(20)
);
CREATE TABLE MonHoc(
    MaMH VARCHAR(20) PRIMARY KEY,
    TenMH VARCHAR(50)
);
create table BangDiem(
MaHS varchar(20),
MaMonHoc varchar(20),
DiemThi int ,
NgayKT datetime ,
primary key (MaHS,MaMonHoc),
foreign key (MaHS) references hocsinh (MAHS),
foreign key (MaMonHoc) references MonHoc(MaMH)
);
create table GiaoVien(
MaGV varchar (20) primary key ,
TenGV varchar(20),
SDT varchar(10)
);
alter table MonHoc add MaGV varchar(20);
alter table MonHoc add constraint FK_MaGV foreign key (MaGV) references GiaoVien(MaGV); 