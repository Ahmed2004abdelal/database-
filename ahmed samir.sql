use Train_Station
go

--ahmed samir

--1
select * from ops.station
--2
select * from info.operators
--3
select train_class , seat_number , station_ID from ops.booking
where train_class =2 or station_ID >3
order by train_class
--4
select* from ops.passengers
order by F_name
--5
select*from ops.booking
order by passenger_ID
--6
select * from ops.trains
where destination ='ALX'
order by operator_ID
--7
select booking_date,train_class,station_name,country
from ops.booking as b inner join ops.station as st
on b.station_ID = st.station_ID
order by train_class

--8
select F_name+L_name as name, age , station_name
from ops.employees as e , ops.station as s
where e.station_ID = s.station_ID
order by age ;


--9
select max(train_class)as train_class,
max(seat_number)as seat_number,
avg(capacity)as capacity,
min(train_number)as train_number
from ops.booking as b inner join ops.trains as t
on b.train_ID = t.train_ID
group by capacity
having max(seat_number) >= 20


--10
select max(train_class)as train_class,
max(seat_number)as seat_number,
avg(capacity)as capacity,
min(train_number)as train_number
from ops.booking as b inner join ops.trains as t
on b.train_ID = t.train_ID
group by capacity
having max(seat_number) >= 20
order by train_class