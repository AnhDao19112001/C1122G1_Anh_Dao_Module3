use case_study_database;

-- task 16
-- update nhan_vien set is_delete = 1 where ma_nhan_vien in (
-- select nv.ma_nhan_vien
-- from (select ma_nhan_vien
-- from nhan_vien
	 -- where ma_nhan_vien not in (
	-- select ma_nhan_vien
	-- from hop_dong
	-- where year(ngay_lam_hop_dong) between 2019 and 2021)
 -- ) as nv
-- );
-- select *
-- from nhan_vien
-- where is_delete = 0;

-- cách khác  
delete from nhan_vien
WHERE
   ma_nhan_vien NOT IN (SELECT 
       ma_nhan_vien
   FROM
       hop_dong
   WHERE
       YEAR(ngay_lam_hop_dong) BETWEEN 2019 AND 2021);

-- task 17
