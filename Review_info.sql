
create table Review_Data(
rv_number number(10) primary key,
rv_bknumber number(8) not null,
rv_id varchar2(20) not null,
rv_date date not null,
rv_score number(1) not null,
rv_content varchar2(1000) null
);

select * from review_data;

insert into REVIEW_DATA(rv_number, rv_bknumber, rv_id, rv_date, rv_score, rv_content)
	values(1, 22020001, 'hyun1', sysdate, 4, '내용1');
insert into REVIEW_DATA(rv_number, rv_bknumber, rv_id, rv_date, rv_score, rv_content)
	values(2, 22020001, 'hyun2', sysdate, 5, '내용2');
insert into REVIEW_DATA(rv_number, rv_bknumber, rv_id, rv_date, rv_score, rv_content)
	values(3, 22020001, 'hyun3', sysdate, 3, '내용3');
	
commit
