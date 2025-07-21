create table user(
    id int primary key AUTO_INCREMENT,
    name varchar(250),
    NoPhone varchar(20),
    email varchar(50),
    password varchar(50),
    status varchar(20),
    role varchar(20),
    UNIQUE (email)
);

insert into user(name,NoPhone,email,password,status,role) values ('Syahmie','01110933424','syahmierazi97@gmail.com','Syahmie97','true','Staff');

create table category(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(150) NOT NULL,
    primary key(id)
);

create table product(
    id int NOT NULL AUTO_INCREMENT,
    name varchar(150) NOT NULL,
    categoryId integer NOT NULL,
    description varchar (255),
    price integer,
    status varchar(15),
    primary key(id)
);

create table bill(
    id int NOT NULL AUTO_INCREMENT,
    uuid varchar(200) NOT NULL,
    name varchar(250) NOT NULL,
    email varchar(150) NOT NULL,
    noPhone varchar(255) NOT NULL,
    paymentMethod varchar(50) NOT NULL,
    total int NOT NULL,
    productDetails JSON DEFAULT NULL,
    createdBy varchar(250) NOT NULL,
    primary key(id)
);