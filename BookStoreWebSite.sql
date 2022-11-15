

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

drop table Mb_info;



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
drop table DV_INFO;
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
insert into BOOK_INFO values(70001003,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001004,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001005,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001006,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001007,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001008,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001009,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001010,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001011,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001012,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');
insert into BOOK_INFO values(70001013,'식준엄','엄퍼카','ㅇㅅㅇ',sysdate,'/images/amumu.jpg',1,99,sysdate,'책 디테일',1557,2700,'');

select * from BOOK_INFO;
drop table BOOK_INFO;


create table order_info(
    or_number varchar2(40) primary key,
    or_mbid varchar2(20) not null,
        constraint or_mbid_fk foreign key(or_mbid)
            references mb_info(mb_id),

    or_status number(1) 
    	default 0 not null,
    or_date date 
        default sysdate not null,
    or_delivery number(10),
    or_deliveryCost number (4)
    	default 3000 not null,
    or_address varchar2(100) 
)

insert into ORDER_INFO values('22FEB105564','admin',1,sysdate,12345678,2500,'신림언저리');
select * from order_INFO;
drop table order_info;


create table order_items(

    ori_number varchar2(40) not null,
	constraint ori_number_fk foreign key(ori_number)
	    references order_info(or_number),
    ori_bknumber number(8) not null,
        constraint ori_bknumber_fk foreign key(ori_bknumber)
            references book_info(bk_number),
    ori_bkprice number(10),
    ori_bkdiscount number(3) 
        default 0 not null,
    ori_bkcount number(3) 
    	default 1 not null
  )  
insert into order_items values('22FEB105564',70001000,2400,10,1);
insert into order_items values('22FEB105564',70001000,
                        (select bk_price from book_info where bk_number = 70001000),
                        (select ca_bkcount from  Cart_info where ca_mbid = 'admin' and ca_bknumbers = 70001000),1);
                        
select * from ORDER_INFO;
select * from order_items;

 drop table ORDER_INFO;
 drop table order_items;
 

 
 
delete from ORDER_INFO where 
 
 
Cart_info	

ca_number	장바구니 번호	번호	NUMBER		not null	PK, FK
ca_mbid	회원아이디	아이디	VARCHAR2	20	not null	FK
ca_bknumber	책번호	번호	NUMBER	8	not null	FK
ca_bkcount	선택된 갯수	개수	NUMBER	4	not null	

create table Cart_info(
	ca_mbid varchar2(20) not null,
		constraint ca_mbid_fk foreign key(ca_mbid)
            references mb_info(mb_id),
    ca_bknumbers number(8) not null,
    	constraint ca_bknumbers_fk foreign key(ca_bknumbers)
    		references book_info(bk_number),
	 ca_bkcount number(3) 
	    	default 1 not null
	    		constraint ca_bkcount check (ca_bkcount between 0 and 999)
)
select c.ca_mbid,c.ca_bknumbers from cart_info c,Mb_info m
where c.ca_mbid = 'admin'
and c.ca_mbid = m.mb_id;

drop table cart_info;
   
delete from CART_INFO where ca_bknumbers = 70001000;


insert into cart_info(ca_mbid,ca_bknumbers) values ('admin',70001000);
insert into cart_info(ca_mbid,ca_bknumbers) values ('admin',70001001);
insert into cart_info(ca_mbid,ca_bknumbers)  values ('admin',70001002);
insert into cart_info(ca_mbid) values('admin');
select * from cart_info where ca_mbid = 'admin';

commit

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

insert into Wish_info values('admin',70001002);
insert into Wish_info values('admin',70001003);
insert into Wish_info values('admin',70001004);
insert into Wish_info values('admin',70001005);
insert into Wish_info values('admin',70001006);
insert into Wish_info values('admin',70001007);
insert into Wish_info values('admin',70001008);
insert into Wish_info values('admin',70001009);
insert into Wish_info values('admin',70001010);
insert into Wish_info values('admin',70001011);
insert into Wish_info values('admin',70001012);
insert into Wish_info values('admin',70001013);

select * from wish_info;

drop table Wish_info;