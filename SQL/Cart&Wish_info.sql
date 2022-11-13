create table Cart_info(
	ca_mbid varchar2(20) not null,
    ca_bknumbers number(8) not null,
	ca_bkcount number(3) 
)
select c.ca_mbid,c.ca_bknumbers from cart_info c,Mb_info m
where c.ca_mbid = 'admin'
and c.ca_mbid = m.mb_id;

select * from CART_INFO;

drop table cart_info;
   
delete from CART_INFO where ca_bknumbers = 70001000;


insert into cart_info(ca_mbid,ca_bknumbers) values ('admin',70001000);
insert into cart_info(ca_mbid,ca_bknumbers) values ('admin',70001001);
insert into cart_info(ca_mbid,ca_bknumbers)  values ('admin',70001002);
insert into cart_info(ca_mbid) values('admin');
select * from cart_info where ca_mbid = 'admin';

commit

drop table cart_info;



create table Wish_info(
	wi_mbid varchar2(20) not null,
    wi_bknumbers number(8) not null
)

insert into Wish_info values('admin',70001000);
select * from wish_info;

drop table Wish_info;