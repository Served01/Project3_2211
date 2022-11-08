create table Book_info(
bk_number number(8) primary key,
bk_title varchar2(100) not null,
bk_writer varchar2(100) not null,
bk_publisher varchar2(50) not null,
bk_pubdate date not null,
bk_image varchar2(500) not null,
bk_local number(1) not null,
bk_genre number(2) not null,
bk_infodate date not null,
bk_detail varchar2(1000) null,
bk_quantity	number(30) not null,
bk_price number(30) not null
);

bk_title_upper varchar2(100) not null

drop table Book_info;

insert into Book_info values(12345678, '제목', '작성자', '출판사', '2022-11-07', 'bk_image.jpg', 1, 1, sysdate, '가나다라마바사', 5, 50, '제목');