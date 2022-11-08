

create table Mb_info(
    mb_id varchar2(20) primary key
        constraint mb_id check (length(mb_id) between 4 and 12),
    mb_pw varchar2(20) not null
        constraint mb_pw check (length(mb_pw) between 8 and 16),
    mb_name varchar2(12) not null,
    mb_email varchar2(30) not null,
    mb_tel varchar2(15) not null,
    mb_date date 
        default sysdate not null
)

insert into mb_info(mb_id,mb_pw,mb_name,mb_email,mb_tel) values('admin',12345678,'test','test@gmail.com','010-1234-4567');
select * from mb_info;




create table Dv_info(
    dv_id varchar2(20) not null,
        constraint dv_id_fk foreign key(dv_id)
            references Mb_info(mb_id),
    dv_name varchar2(12) not null,
    dv_tel varchar2(15) not null,
    dv_address varchar2(100) not null
)

insert into dv_info values('admin','house','010-7894-1234','신림언저리');
select * from DV_INFO;

create table Book_info(
    bk_number number(8) primary key,
    bk_title VARCHAR2(100) not null,
    bk_writer VARCHAR2(100) not null,
    bk_publisher VARCHAR2(50) not null,
    bk_pubdate date not null,
    bk_image VARCHAR2(500) not null,
    bk_local number(1) not null,
    bk_genre number(2) not null,
    bk_infodate date 
        default sysdate not null,
    bk_detail VARCHAR2(1000),
    bk_quantity number(4) not null,
    bk_price number(30) not null,
    bk_title_upper varchar2(1000)
)

insert into BOOK_INFO values(70001000,'엄준식','아무무','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001001,'준식엄','안은우','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001002,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
select * from BOOK_INFO;



create table order_info(
    or_number varchar2(40) primary key,
    or_mbid varchar2(20) not null,
        constraint or_mbid_fk foreign key(or_mbid)
            references mb_info(mb_id),
    or_bknumber number(8) not null,
        constraint or_bknumber_fk foreign key(or_bknumber)
            references book_info(bk_number),
    or_bkprice number(30) not null,
    or_cacount number(3) not null,
    or_status number(1) not null,
    or_date date 
        default sysdate not null,
    or_delivery number(10) not null,
    or_address varchar2(100) not null
)

insert into ORDER_INFO values('22FEB105564','admin',70001000,2700,1,9,sysdate,12345678,'신림언저리');
select * from order_INFO;

Cart_info	

ca_number	장바구니 번호	번호	NUMBER		not null	PK, FK
ca_mbid	회원아이디	아이디	VARCHAR2	20	not null	FK
ca_bknumber	책번호	번호	NUMBER	8	not null	FK
ca_bkcount	선택된 갯수	개수	NUMBER	4	not null	

create table Cart_info(
	ca_mbid varchar2(20) not null,
		constraint ca_mbid_fk foreign key(ca_mbid)
            references mb_info(mb_id),
    ca_bknumbers number(8)
)
select c.ca_mbid,c.ca_bknumbers from cart_info c,Mb_info m
where c.ca_mbid = 'admin'
and c.ca_mbid = m.mb_id;

delete from CART_INFO where ca_bknumbers = 70001000;


insert into cart_info values ('admin',70001000);
insert into cart_info values ('admin',70001001);
insert into cart_info values ('admin',70001002);
insert into cart_info(ca_mbid) values('admin');
select * from cart_info where ca_mbid = 'admin';


drop table cart_info;
Wish_info	
wi_number	찜목록 번호	번호	NUMBER		not null	PK, FK
wi_mbid	회원아이디	아이디	VARCHAR2	20	not null	FK
wi_bknumber	책번호	번호	NUMBER	8	not null	FK
wi_bkcount	책재고	재고량	NUMBER	4	not null	


create table Wish_info(
	wi_mbid varchar2(20) not null,
		constraint wi_mbid_fk foreign key(wi_mbid)
            references mb_info(mb_id),
    wi_bknumbers number(8) not null,
    	constraint wi_bknumbers_fk foreign key(wi_bknumbers)
    		references book_info(bk_number)
)

insert into Wish_info values('admin',70001000);
select * from wish_info;

drop table Wish_info;