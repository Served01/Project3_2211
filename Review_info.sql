
create table Review_Data(
rv_number number(10) primary key,
rv_bknumber number(8) not null,
rv_id varchar2(20) not null,
rv_date date not null,
rv_score number(1) not null,
rv_content varchar2(1000) null,
rv_deleted varchar2(7) not null
);

select * from review_data;

insert into REVIEW_DATA(rv_number, rv_bknumber, rv_id, rv_date, rv_score, rv_content, rv_deleted)
	values(review_seq.nextval, 22020001, 'hyun1', sysdate, 4, '내용1', '0');
insert into REVIEW_DATA(rv_number, rv_bknumber, rv_id, rv_date, rv_score, rv_content, rv_deleted)
	values(review_seq.nextval, 22020001, 'hyun2', sysdate, 5, '내용2', '0');
insert into REVIEW_DATA(rv_number, rv_bknumber, rv_id, rv_date, rv_score, rv_content, rv_deleted)
	values(review_seq.nextval, 22020001, 'hyun3', sysdate, 3, '내용3', '0');
	
commit;

delete from REVIEW_DATA;

drop table Review_Data;

create sequence review_seq
	start with 1
	increment by 1
	maxvalue 9999999999
	nocycle;
	
drop sequence review_seq;
