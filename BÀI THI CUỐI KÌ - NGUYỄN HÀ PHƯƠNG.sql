create database quanlycauthu;



use quanlycauthu; 

create table CauThu(
MaCauThu int primary key,
TenCauThu varchar(50),
NgaySinh date,
Phai tinyint,
NoiSinh varchar(50)
);

create table ThiDau(
MaDoi varchar(10),
NgayThiDau date,
HieuSo int,
KetQua int,
primary key (MaDoi, NgayThiDau)
);

create table Penelty(
MaPhat varchar(10) primary key,
MaCT int,
NgayPhat date,
SoLanPhat int,
TienPhat int,
LoaiThe char(1),
foreign key (MaCT) references CauThu(MaCauThu)
); 


insert into CauThu values
(01, 'Huynh Duc', '1974-07-12', 1, 'Tp.HCM'),
(02, 'Hong Son', '1973-05-10', 1, 'Ha Noi'),
(03, 'Thanh Nam', '1978-12-25', 1, 'Nam Dinh'),
(04, 'Bao Khanh', '1980-12-01', 1, 'Ha Noi'),
(05, 'Duc Thang', '1976-11-15', 1, 'Ha Noi');

insert into ThiDau values
('A1', '2004-12-22', 2, 1),
('A1', '2005-10-26', 1, 0),
('A3', '2005-10-25', 0, 0),
('A5', '2005-10-10', 3, 1),
('B2', '2004-03-08', 1, 1),
('B2', '2005-08-19', 3, 0),
('C1', '2005-05-19', 1, 1),
('C2', '2004-10-30', 2, 0); 

insert into Penelty values
('P1', 01, '2004-12-22', 2, 250000, 'V'),
('P2', 01, '2005-08-19', 1, 450000, 'D'),
('P3', 02, '2005-10-10', 2, 250000, 'V'),
('P4', 02, '2005-10-26', 1, 100000, 'V'),
('P5', 03, '2005-10-25', 1, 450000, 'D');

drop table penalty; 
