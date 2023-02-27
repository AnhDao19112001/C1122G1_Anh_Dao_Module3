use quan_li_sinh_vien;

select * from `subject`
where credit = (select max(credit) from `subject`);

