drop database if exists case_study_database;
create database case_study_database;
use case_study_database;
create table vi_tri(
ma_vi_tri int primary key,
ten_vi_tri varchar(45)
);

create table trinh_do(
ma_trinh_do int primary key,
ten_trinh_do varchar(45)
);

create table bo_phan(
ma_bo_phan int primary key,
ten_bo_phan varchar(45)
);

create table nhan_vien(
ma_nhan_vien int primary key auto_increment,
ho_ten varchar(45) not null,
ngay_sinh date not null,
so_cmnd varchar(45) not null,
luong double not null,
so_dien_thoai varchar(45) not null,
email varchar(45),
dia_chi varchar(45),
ma_vi_tri int,
ma_trinh_do int,
ma_bo_phan int,
foreign key(ma_vi_tri) references vi_tri(ma_vi_tri),
foreign key(ma_trinh_do) references trinh_do(ma_trinh_do),
foreign key(ma_bo_phan) references bo_phan(ma_bo_phan)
);

create table loai_khach(
ma_loai_khach int primary key,
ten_loai_khach varchar(45)
);

create table khach_hang(
ma_khach_hang int primary key auto_increment,
ho_ten varchar(45) not null,
ngay_sinh date not null,
gioi_tinh bit(1) not null,
so_cmnd varchar(45) not null,
so_dien_thoai varchar(45) not null,
email varchar(45),
dia_chi varchar(45),
ma_loai_khach int,
foreign key(ma_loai_khach) references loai_khach(ma_loai_khach)
);

create table kieu_thue(
ma_kieu_thue int primary key,
ten_kieu_thue varchar(45)
);

create table loai_dich_vu(
ma_loai_dich_vu int primary key,
ten_loai_dich_vu varchar(45)
);

create table dich_vu(
ma_dich_vu int primary key auto_increment,
ten_dich_vu varchar(45) not null,
dien_tich int,
chi_phi_thue double not null,
so_nguoi_toi_da int,
tieu_chuan_phong varchar(45),
mo_ta_tien_nghi_khac varchar(45),
dien_tich_ho_boi double,
so_tang int,
ma_kieu_thue int,
ma_loai_dich_vu int,
foreign key(ma_kieu_thue) references kieu_thue(ma_kieu_thue),
foreign key(ma_loai_dich_vu) references loai_dich_vu(ma_loai_dich_vu)
);

create table hop_dong(
ma_hop_dong int primary key auto_increment,
ngay_lam_hop_dong datetime not null,
ngay_ket_thuc datetime not null,
tien_dac_coc double not null,
ma_nhan_vien int,
ma_khach_hang int,
ma_dich_vu int,
foreign key (ma_nhan_vien) references nhan_vien(ma_nhan_vien),
foreign key (ma_khach_hang) references khach_hang(ma_khach_hang),
foreign key (ma_dich_vu) references dich_vu(ma_dich_vu) 
);

create table dich_vu_di_kem(
ma_dich_vu_di_kem int primary key auto_increment,
ten_dich_vu_di_kem varchar(45) not null,
gia double not null,
don_vi varchar(10) not null,
trang_thai varchar(45)
);

create table hop_dong_chi_tiet(
ma_hop_dong_chi_tiet int primary key auto_increment,
so_luong int not null,
ma_hop_dong int,
ma_dich_vu_di_kem int,
foreign key (ma_hop_dong) references hop_dong(ma_hop_dong),
foreign key (ma_dich_vu_di_kem) references dich_vu_di_kem(ma_dich_vu_di_kem)
);

insert into vi_tri(ma_vi_tri, ten_vi_tri)
values (1,'Quản lý'), (2, 'Nhân viên');
insert into trinh_do(ma_trinh_do, ten_trinh_do)
values (1,'Trung cấp'), (2,'Cao Đẳng'), (3,'Đại học'),(4, 'Sau đại học');
insert into bo_phan(ma_bo_phan, ten_bo_phan)
values (1,'Sale – Marketing'),(2,'Hành Chính'),(3,'Phục vụ'),(4,'Quản lý');
insert into nhan_vien(ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
values (1,'Châu Hoàng Tố Trinh', '1997-05-31', '123456789', '5000000', '0329288263', 'soljin@gmail.com', '001 Phú Ninh,Quảng Nam',1,1,1 ),
(2, 'Phan Tá Anh Đào', '2001-11-19', '123456789', '10000000', '0931997293', 'phantaanhdao@gmail.com', 'Ai Nghia, Đại Lộc, Quảng Nam',2,2,2);
insert into loai_khach(ma_loai_khach, ten_loai_khach)
values (1,'Diamond'),(2,'Platinium'),(3,'Gold'),(4,'Silver'),(5,'Member');
insert into khach_hang(ma_khach_hang,ho_ten,ngay_sinh,gioi_tinh,so_cmnd,so_dien_thoai,email,dia_chi,ma_loai_khach)
values (1,'Phan Tá Anh Đào','2001-11-19',0,'123456789','0931997293','phantaanhdao@gmail.com','Ai Nghia, Đại Lộc, Quảng Nam',1);
insert into kieu_thue(ma_kieu_thue,ten_kieu_thue)
values (1,'Năm'),(2,'Tháng'),(3,'Ngày'),(4,'Giờ');
insert into loai_dich_vu(ma_loai_dich_vu,ten_loai_dich_vu)
values (1,'Villa'),(2,'House'),(3,'Phòng');
insert into dich_vu(ma_dich_vu,ten_dich_vu,dien_tich,chi_phi_thue,so_nguoi_toi_da,tieu_chuan_phong,mo_ta_tien_nghi_khac,dien_tich_ho_boi,so_tang,ma_kieu_thue,ma_loai_dich_vu)
values (1,'Villa','2000','10000000','10','vippro','có idol', 200,5,1,1);
insert into hop_dong(ma_hop_dong,ngay_lam_hop_dong,ngay_ket_thuc,tien_dac_coc,ma_nhan_vien,ma_khach_hang,ma_dich_vu)
values (1,'2023-01-01','2023-02-02',0,1,1,1);
insert into dich_vu_di_kem(ma_dich_vu_di_kem,ten_dich_vu_di_kem,gia,don_vi,trang_thai)
values (1,'Đá gà','500000','giờ','bây giờ');
insert into hop_dong_chi_tiet(ma_hop_dong_chi_tiet,so_luong,ma_hop_dong,ma_dich_vu_di_kem)
values (1,1,1,1);