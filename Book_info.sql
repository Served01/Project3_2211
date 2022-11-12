create table Book_info(
bk_number number(8) primary key,
bk_title varchar2(100) not null,
bk_writer varchar2(100) not null,
bk_publisher varchar2(50) not null,
bk_pubdate date not null,
bk_image varchar2(500) not null,
bk_local varchar2(20) not null,
bk_genre varchar2(50) not null,
bk_infodate date not null,
bk_detail varchar2(1000) not null,
bk_quantity	number(10) not null,
bk_price number(10) not null,
bk_title_upper varchar2(100) not null,
bk_deleted varchar2(7) not null
);

drop table Book_info;

delete BOOK_INFO;

select * from BOOK_INFO;

insert into Book_info values(12345678, '제목1', '작성자1', '출판사1', '2022-11-07', 'bk_image.jpg', '해외', '인문', sysdate, '가나다라마바사1', 5, 50, '제목1', 0);
insert into Book_info values(12345679, '제목2', '작성자2', '출판사2', '2022-11-08', 'bk_image.jpg', '해외', '인문', sysdate, '가나다라마바사2', 5, 50, '제목2', 0);
insert into Book_info values(12345670, '제목3', '작성자3', '출판사3', '2022-11-09', 'bk_image.jpg', '해외', '인문', sysdate, '가나다라마바사3', 5, 50, '제목3', 0);

commit
