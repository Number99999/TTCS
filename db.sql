create schema ttcs;
use ttcs;
create table user(
	id_user int primary key AUTO_INCREMENT,
	username varchar(100),
	address varchar(100),
	phone varchar(15),
	pass varchar(15),
	email varchar(15),
	sex varchar(10),
	admin int);
create table product(
	id_prod primary key AUTO_INCREMENT,
	name_prod varchar(100),
	link_img varchar(200),
	content text,
	id_seller int,
	categories varchar(100),
	tuKhoa varchar(20),
	soLuong int,
	price double);
create cart(
	id int primary key AUTO_INCREMENT,
	id_product int, 
	count int,
	id_user int,
	foreign key (id_product) references product(id_prod),
	foreign key (id_user) references user(id_user)
);
create table odered(
	id int primary key auto_increment,
    id_product int,
    id_user int,
    soLuong int,
price int,
name varchar(200),
link_img varchar(200),
tinhTrang varchar(100) default "Đã đặt hàng",
    foreign key (id_product) references product(id_prod),
    foreign key (id_user) references user(id_user)
);