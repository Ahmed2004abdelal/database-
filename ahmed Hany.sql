use Train_Station
go

--ahmed hani part

--11
select F_name+L_name as name ,age from ops.employees
where age>18

--12
select F_name+L_name as name ,age from ops.employees
where  F_name like 'a%'

--13
select train_class , booking_date , F_name+L_name as name
from ops.booking as b left  join ops.passengers as p
on b.passenger_ID = p.passenger_ID
order by seat_number ;

--14
select train_class , seat_number , arrival_time , train_number
from ops.booking as b right join ops.trains as t
on b.train_ID = t.train_ID;

--15
select train_number , destination,operator_name,website
from ops.trains as t , info.operators as o
where t.operator_ID >= o.operator_ID
order by capacity;

--16
select min(train_number),avg(capacity)
from ops.trains
group by capacity

--17
select min(train_number),avg(capacity)
from ops.trains
group by capacity
having min(train_number) > 50;

--18
select min(train_number),avg(capacity)
from ops.trains
group by capacity
having min(train_number) > 50 and avg(capacity)>100;

--19
select min(train_number),avg(capacity)
from ops.trains
group by capacity
having min(train_number) between 50 and 100 and avg(capacity)>100;

--20
select max(train_class)as train_class,
max(seat_number)as seat_number,
avg(capacity)as capacity,
min(train_number)as train_number
from ops.booking as b inner join ops.trains as t
on b.train_ID = t.train_ID
group by capacity





  


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


