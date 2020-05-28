use WDF1119FP;

create table users
(
	id int primary key auto_increment,
	firstname varchar(20) not null,
	lastname varchar(20) not null,
	username varchar(20) not null,
	password varchar(20) not null,
	companyname varchar(20) not null,
	city varchar(20) not null,
	country varchar(20) not null
	
)
