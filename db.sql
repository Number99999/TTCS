use ttcs;
create table user(
	id varchar(20) primary key,
    name varchar(100),
    acc varchar(100),
    pass varchar(100),
    email varchar(150)
    );
    
create table product(
	id varchar(20) primary key,
    name varchar(100),
    link_img varchar(200),
    content text,
    chiTiet text,
    categories varchar(100),
    tuKhoa varchar(20),
    price double 
);

create table Cart(
	id_product int,
    count int,
    foreign key (id_product) references product(id)
    );
    