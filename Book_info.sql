create table Book_info(
bk_number varchar2(8) primary key,
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
bk_price number(30) not null,
bk_title_upper varchar2(100) not null
);

drop table Book_info;

insert into Book_info(bk_number, bk_title, bk_writer, bk_pubdate, bk_image, bk_local, bK_genre, sysdate, bk_detail, bk_quantity, bk_price, upper(bk_title))