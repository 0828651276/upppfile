create database QuanlyTourDuLich;
use QuanlyTourDuLich;


create table city (
    id int primary key auto_increment,
    cityname varchar(255) not null
);


create table categorytour (
    id int primary key auto_increment,
    categorycode varchar(255),
    categoryname varchar(255)
);


create table destination (
    id int primary key auto_increment,
    destinationname varchar(255) not null,
    `describe` varchar(255),
    cost int,
    city_id int,
    foreign key (city_id) references city(id)
);


create table clients (
    id int primary key auto_increment,
    nameclients varchar(255) not null,
    idnumber varchar(255),
    datebirth date,
    city_id int,
    foreign key (city_id) references city(id)
);


create table tour (
    id int primary key auto_increment,
    tourcode varchar(255),
    category_id int,
    destination_id int,
    datestart date,
    dateend date,
    foreign key (category_id) references categorytour(id),
    foreign key (destination_id) references destination(id)
);


create table ordertour (
    id int primary key auto_increment,
    tour_id int,
    clients_id int,
    status varchar(255),
    foreign key (tour_id) references tour(id),
    foreign key (clients_id) references clients(id)
);




