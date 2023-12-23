use Train_Station
go

--update
update ops.station
set operator='el 3alamey'
where station_ID=1;
--update
update ops.trains
set train_number=109
where train_ID = 1 and line_name='moheyElden';
--update
update ops.trains
set line_name = 'el 10 men ramadan'
where train_ID=2 and train_number =20;
--update
update ops.employees
set department = 'coustomer Service'
where employees_ID=1;
--update
update info.operators
set country = 'Palestine'
where operator_ID=1;
--update
update ops.passengers
set city = 'GAZA'
where PH_passenger = '+201016176612'


--delete
delete from ops.booking where train_class = 1;
--delete
delete from ops.booking where station_ID <= 5;
--delete
delete from ops.booking where seat_number between 10 and 30;
--delete
delete from ops.employees where station_ID = 3 or station_ID = 4;
--delete
delete from ops.employees where age between 15 and 20;