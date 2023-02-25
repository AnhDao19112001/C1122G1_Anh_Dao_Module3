use case_study_database;
-- task2
select ma_nhan_vien, ho_ten
from nhan_vien
where ho_ten regexp '^[HTK]' and char_length(ho_ten) <= 15;

-- task3
select ma_khach_hang, ho_ten
from khach_hang
where (year(curdate()) - year(ngay_sinh) between 18 and 50) and (dia_chi like '%Đà Nẵng' or dia_chi like '%Quảng Trị');

-- task4 
select khach_hang.ma_khach_hang, khach_hang.ho_ten, count(hop_dong.ma_khach_hang) as so_lan_dat
from khach_hang
join hop_dong on khach_hang.ma_khach_hang = hop_dong.ma_khach_hang
join loai_khach on loai_khach.ma_loai_khach = khach_hang.ma_loai_khach
where loai_khach.ten_loai_khach = 'Diamond'
group by ma_khach_hang
order by so_lan_dat;

-- task5
select 