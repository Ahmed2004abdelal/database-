use Train_Station;
go

--create database Train_Station;


create schema ops ;

create schema info ;


create table Train_Station.ops.station(
station_ID int identity(1,1) ,
station_name  varchar(30) not null default('el dab3a'),
City_name varchar(30) not null default('cairo'),
country  varchar(30) default('egypt'),
train_count int default(5),
opening_time time  not null default getdate(),
closing_time time not null default getdate(),
operator varchar(30) default('el masria'),
hot_phone varchar(20) default('+201016176612'),

constraint station_PK primary key (station_ID)
)
select * from Train_Station.ops.station



INSERT INTO Train_Station.ops.station (station_name, City_name, country, train_count, opening_time, closing_time, operator, hot_phone)
VALUES
('sadat', '6-october', 'egypt', 5, '14:18:26.1233333', '14:18:26.1233333', 'el 3alamey', '+201016176612'),
('bani_syef', 'bani_suef', 'egypt', 5, '14:19:48.7500000', '14:19:48.7500000', 'el masria', '+201016176612'),
('bani_suef', 'bani_suef', 'egypt', 7, '04:53:44.0000000', '04:53:44.0000000', 'EL masri', '012949851'),
('EL minia', 'el minia', 'egypt', 2, '14:22:45.8033333', '14:22:45.8033333', 'moSalah', '015783217'),
('elgiza', 'elgiza', 'egypt', 9, '14:23:37.5266667', '14:23:37.5266667', 'nageb sawers', '01284191957'),
('banha', 'banha', 'egypt', 12, '14:24:08.7700000', '14:24:08.7700000', 'ahmed', '01472817257'),
('ramses', 'ramses', 'egypt', 16, '14:24:57.1400000', '14:24:57.1400000', 'nasa', '0124997737'),
('ALX', 'ALX', 'egypt', 3, '14:26:04.3033333', '14:26:04.3033333', 'marwan_Pablo', '012478917'),
('tanta', 'tanta', 'egypt', 7, '14:27:02.1066667', '14:27:02.1066667', 'legy-cy', '0824179917'),
('elmecxec', 'cairo', 'egypt', 11, '14:29:22.4133333', '14:29:22.4133333', 'abo-elanwar', '0912749722');




create table Train_Station.info.operators(
operator_ID int identity(1,1),
operator_name varchar(50) not null default('nageb saweras'),
country varchar(50) default('egypt'),
website varchar(50) not null default('https://WWW.traincompany.com'),
information varchar(80),

constraint operator_PK primary key (operator_ID),
)
select* from Train_Station.info.operators

INSERT INTO Train_Station.info.operators (operator_name, country, website, information)
VALUES
('ahmed samer', 'Palestine', 'https://WWW.ahmedsamircopmany.com', 'travel by train'),
('marwan-pablo', 'ALX', 'https://WWW.maro.com', 'elaljfajskfkgahgjdsh'),
('marwan-mossa', 'elma3ady', 'https://WWW.mossa.com', 'ashfiohash'),
('abyusif', 'cairo', 'https://WWW.abyusif.com', 'askjhglhakldhgioeogjmalfjkn'),
('abo-elAnwar', 'cairo', 'https://WWW.elanwar.com', 'aklhgqwvioqnuirbwui'),
('mussa-sam', 'el-esma3elya', 'https://WWW.mussa-sam.com', 'iwasfjiwencvioqn');






create table Train_Station.ops.trains(
train_ID int identity(1,1) ,
operator_ID int  ,
leave_time time not null default getdate(),
arrival_time time not null default getdate(),
train_number int not null default(1092),
line_name varchar(20) default('seka7ded'),
destination varchar(20) default('el ma3dey'),
capacity int  default(80),

constraint train_PK primary key (train_ID),
constraint operator_Information foreign key (operator_ID) references Train_Station.info.operators(operator_ID)
)
select * from Train_Station.ops.trains



INSERT INTO Train_Station.ops.trains (operator_ID, leave_time, arrival_time, train_number, line_name, destination, capacity)
VALUES
(1, '1900-01-01 00:00:00.000', '1900-01-01 00:00:00.000', 109, 'moheyElden', 'eltagamo3', 90),
(2, '2023-12-21 14:18:26.147', '2023-12-21 14:18:26.147', 20, 'el 10 men ramadan', 'eltagamo3', 30),
(1, '2023-12-21 14:46:10.373', '2023-12-21 14:46:10.373', 77, 'el ganga', 'giza', 89),
(1, '2023-12-21 14:46:41.687', '2023-12-21 14:46:41.687', 64, 'el tadab3a', 'el ma3dey', 80),
(2, '2023-12-21 14:47:34.107', '2023-12-21 14:47:34.107', 57, 'mashro3', 'bani-suef', 112),
(3, '2023-12-21 14:48:19.030', '2023-12-21 14:48:19.030', 23, 'el_sadat', 'tanta', 205),
(3, '2023-12-21 14:48:49.880', '2023-12-21 14:48:49.880', 12, 'abdel_nasser', 'ALX', 130),
(2, '2023-12-21 14:49:34.667', '2023-12-21 14:49:34.667', 16, '6_october', 'el_ba7erela7mer', 80),
(3, '2023-12-21 14:50:29.170', '2023-12-21 14:50:29.170', 89, 'el_10_men_ramadan', 'aswan', 200),
(2, '2023-12-21 14:51:18.163', '2023-12-21 14:51:18.163', 87, 'el_3agamey', 'sohag', 160),
(5, '2023-12-21 14:53:16.887', '2023-12-21 14:53:16.887', 13, 'el_nasra', 'cairo', 200),
(6, '2023-12-21 14:54:03.180', '2023-12-21 14:54:03.180', 726, 'abd_el_salam_3aref', 'ALX', 140);





create table Train_Station.ops.employees(
employees_ID int identity(1,1),
F_name varchar(20) not null default('mohamed'),
L_name varchar(20) not null default('shihab'),
PH_number varchar(20) not null unique,
age int not null default(29),
department varchar(30) default('customer service'),

station_ID int  foreign key references Train_Station.ops.station(station_ID)

constraint employees_PK primary key (employees_ID),
)
select * from Train_Station.ops.employees

INSERT INTO Train_Station.ops.employees (F_name, L_name, PH_number, age, department, station_ID)
VALUES
('ahmed', 'abdelaal', '+201016176612', 19, 'GAZA', 1),
('ahmed', 'hany', '+20148989281', 16, 'bani-suef', 2),
('ahmed', 'samir', '+2012848787', 20, 'london', 3),
('mohamed', 'sabri', '+201489127', 17, 'paris', 4),
('yousef', 'nader', '+20248666126', 18, 'ALx', 5),
('legy', 'ce', '+12478917', 29, 'GAZA', 6),
('shehab', 'el-sayed', '+818561856', 26, 'cairo', 7),
('wegz', 'nader', '+82748917059', 27, 'ALx', 8);






create table Train_Station.ops.passengers(
passenger_ID int identity(1,1),
F_name varchar(13) not null default('mohamed'),
L_name varchar(13) not null default('nader'),
PH_passenger varchar(16) unique,
age int not null default(29),
city varchar(20) default('GAZA'),

constraint passenger_PK primary key (passenger_ID)
)
select * from Train_Station.ops.passengers

INSERT INTO Train_Station.ops.passengers (F_name, L_name, PH_passenger, age, city)
VALUES
('ahmed', 'abdelaal', '+201016176612', 19, 'GAZA'),
('ahmed', 'hany', '+20148989281', 16, 'bani-suef'),
('ahmed', 'samir', '+2012848787', 20, 'london'),
('mohamed', 'sabri', '+201489127', 17, 'paris'),
('yousef', 'nader', '+20248666126', 18, 'ALx'),
('legy', 'ce', '+12478917', 29, 'GAZA'),
('shehab', 'el-sayed', '+818561856', 26, 'cairo'),
('wegz', 'nader', '+82748917059', 27, 'ALx');







create table Train_Station.ops.booking(
booking_ID int identity(1,1),
passenger_ID int not null,
train_ID int not null ,
booking_date datetime not null default getdate(),
seat_number int default(56),
train_class int not null default(2),
station_ID int not null foreign key references Train_Station.ops.station(station_ID),

constraint booking_PK primary key (booking_ID),
constraint customer_FK foreign key (passenger_ID) references Train_Station.ops.passengers(passenger_ID),
constraint train_FK foreign key (train_ID) references Train_Station.ops.trains(train_ID)
)


INSERT INTO Train_Station.ops.booking (passenger_ID, train_ID, booking_date, seat_number, train_class, station_ID)
VALUES
(5, 8, '2023-12-23 12:09:40.200', 25, 2, 8),
(2, 3, '2023-12-23 12:10:40.280', 87, 1, 4),
(8, 12, '2023-12-22 12:09:40.200', 56, 3, 1),
(6, 11, '2023-12-23 12:03:40.200', 35, 2, 5),
(7, 10, '2023-12-23 12:28:40.200', 65, 3, 10),
(3, 11, '2023-12-23 12:01:40.200', 12, 1, 9),
(3, 5, '2023-12-23 12:06:40.200', 251, 2, 5),
(7, 1, '2023-12-23 12:04:40.200', 21, 3, 6), 
(8, 4, '2023-12-23 12:02:40.200', 23, 2, 7);


















drop database Train_Station;
drop schema ops;
drop schema info;
drop table Train_Station.ops.Booking;
drop table Train_Station.ops.employees;
drop table Train_Station.ops.trains;
drop table Train_Station.ops.stations;
drop table Train_Station.ops.passengers;
drop table Train_Station.info.operators;


