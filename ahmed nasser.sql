use Train_Station
go

alter table ops.station
add station_location varchar(20) default('bani_suef') ;
--table
alter table ops.employees
add zip_code int default(1248728),
Gender varchar(10) default('male');
--column
alter table ops.passengers
alter column age int null;
--drop column bu elter
alter table ops.passengers
drop column age;
--add constraint by alter
alter table ops.trains
add constraint train_leave_time unique (leave_time)


--rename teble
--exec sp_rename 'station','stations';



--insert
insert into ops.station(station_name,City_name,train_count,operator)
values('sadat','6-october',5,'masr lel sekak 7ded');
--insert
insert into ops.trains(train_number,line_name,destination,capacity,leave_time,arrival_time)
values(408,'moheyElden','eltagamo3',90,12/12/2090,1/1/20092)
--insert
insert into ops.trains(train_number,line_name,destination,capacity)
values(20,'moheyElden','eltagamo3',30)
--insert
insert into ops.employees(F_name,L_name,PH_number,age,department)
values('ahmed','hani',+201095137949,19,'el esteqbal')
--insert
insert into info.operators(operator_name,country,website,information)
values('company ahmed samer','Egypt','https://WWW.ahmedsamircopmany.com','travel by train')
--insert
insert into ops.passengers(F_name,L_name,PH_passenger,age,city)
values('ahmed','abdelaal','+201016176612','19','bani_suef')
