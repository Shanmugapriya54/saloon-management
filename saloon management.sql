 -- create db 
 create database saloon_management;
 -- to display the object
 show databases;
 use saloon_management;
 show tables;
 -- create table employee
 create table employee(
 emp_id int primary key,
 emp_name varchar(45),
 emp_address varchar(50),
 emp_contact int(45));
 alter table employee
 modify column emp_contact varchar(45);
  insert into employee (emp_id,emp_name,emp_address,emp_contact)
values(1,'jms','156 vijaya st',1243563245),
 (2,'priya','ashok st',1324005324),
 (3, 'Alice Smith', '123 Main St',1476543210),
(4, 'Bob Johnson', '456 Elm St',8765432109),
(5, 'Charlie Lee', '789 Oak St',7654321098),
(6, 'David Kim', '101 Pine St',6543210987),
(7, 'Emma Brown', '202 Cedar St',5432109876),
(8, 'Frank Wilson', '303 Birch St',4321098765),
(9, 'Grace Miller', '404 Maple St',3210987654),
(10, 'Henry Davis', '505 Walnut St',2109876543),
(11, 'Isabella Moore', '606 Cherry St',1098765432),
(12, 'Jack White', '707 Spruce St',1987654321),
(13, 'Karen Lopez', '808 Palm St',2876543210),
(14, 'Liam Scott', '909 Redwood St',3765432109),
(15, 'Mia Turner', '111 Poplar St',4654321098),
(16, 'Noah Adams', '222 Fir St',5543210987),
(17, 'Olivia Green', '333 Hickory St',6432109876),
(18, 'Peter Hall', '444 Magnolia St',7321098765),
(19, 'Quinn Baker', '555 Aspen St',8210987654),
(20, 'Rachel Young', '666 Willow St',9109876543);

use saloon_management;
create table customer(
cust_id int primary key,
name varchar(50),
gender varchar(50),
address varchar(45),
contact varchar(45),
emp_id int,
constraint emp_role foreign key(emp_id) 
references employee(emp_id));
use  saloon_management;
insert into customer(cust_id,name,gender,address,contact,emp_id)
values(100, 'John Smith', 'Male', '123 Main St','555-143-4567',1),
(101, 'Sarah Johnson', 'Female', '45 Elm St','555-234-5678',2),
(102, 'Michael Brown', 'Male', '78 Oak Ave','555-345-6789',3),
(103, 'Emily Davis', 'Female', '90 Pine Rd','555-456-7890',4),
(104, 'James Wilson', 'Male', '12 Cedar Ln','555-567-8901',5),
(105, 'Emma Martinez', 'Female', '34 Maple Dr','555-678-9012',6),
(106, 'David Anderson', 'Male', '56 Birch St','555-789-0123',7),
(107, 'Olivia Thomas', 'Female', '89 Spruce Blvd','555-890-1234',8),
(108, 'William White', 'Male', '23 Redwood Ct','555-901-2345',9),
(109, 'Sophia Harris', 'Female', '67 Fir St','555-012-3456',10),
(110, 'Daniel Clark', 'Male', '101 Aspen Rd','555-123-6789',11),
(111, 'Isabella Lewis', 'Female', '222 Palm Ave','555-234-7890',12),
(112, 'Benjamin Walker', 'Male', '333 Cherry Ln','555-345-8901',13),
(113, 'Mia Robinson', 'Female', '444 Magnolia St','555-456-90121',14),
(114, 'Ethan Hall', 'Male', '555 Cypress Rd','555-567-0123',15),
(115, 'Charlotte Allen', 'Female', '666 Willow Ave','555-678-1234',16),
(116, 'Alexander King', 'Male', '777 Sequoia Blvd','555-789-2345',17),
(117, 'Amelia Scott', 'Female', '888 Sycamore St','555-890-3456',18),
(118, 'Henry Wright', 'Male', '999 Bayberry Ct','555-901-4567',19),
(119, 'Harper Young', 'Female', '111 Maplewood Dr','555-012-5678',20);
use saloon_management;
create table payment(
pay_id int primary key,
amount int,
pay_date date,
emp_id int,
cust_id int,
constraint emp_name foreign key(emp_id)
references employee(emp_id),
constraint cust_role foreign key(cust_id)
references customer(cust_id));
insert into payment(pay_id,amount,pay_date,emp_id,cust_id)
values(1, 1000, '2025-03-01',1,100),
(2, 250, '2025-03-02',2,101),
(3, 750, '2025-03-03',3,102),
(4, 300, '2025-03-04',4,103),
(5, 500, '2025-03-05',5,104),
(6, 350, '2025-03-06',6,105),
(7, 450, '2025-03-07',7,106),
(8, 200, '2025-03-08',8,107),
(9, 900, '2025-03-09',9,108),
(10, 110, '2025-03-10',10,109),
(11, 350, '2025-03-11',11,110),
(12, 950, '2025-03-12',12,111),
(13, 275, '2025-03-13',13,112),
(14, 600, '2025-03-14',14,113),
(15, 150, '2025-03-15',15,114),
(16, 175, '2025-03-16',16,115),
(17, 400, '2025-03-17',17,116),
(18, 525, '2025-03-18',18,117),
(19, 85, '2025-03-19',19,118),
(20, 700, '2025-03-20',20,119);
use saloon_management;
create table service(
service_id int primary key,
service_name varchar(50));
select*from service;
insert into service(service_id,service_name)
values(1, 'Haircut',500),
(2, 'Coloring',900),
(3, 'Highlights',1500),
(4, 'Lowlights',1700),
(5, 'Perming',1200),
(6, 'Straightening',5500),
(7, 'Smoothening',6000),
(8, 'Rebonding',4500),
(9, 'Keratin Treatment',3500),
(10, 'Hair Spa',6500),
(11, 'Manicure',2500),
(12, 'Pedicure',8000),
(13, 'Nail Art',4000),
(14, 'Waxing',7000),
(15, 'Threading',7500),
(16, 'Facial',5000),
(17, 'Massage',9000),
(18, 'Body Scrub',8500),
(19, 'Makeup',3300),
(20, 'Hair Extension',4200);

use saloon_management;
create table payment_service(
ps_id int primary key,
ps_date date,
pay_id int,
service_id int,
constraint pay_type foreign key(pay_id)
references payment(pay_id),
constraint service_detail foreign key(service_id)
references service(service_id));
insert into payment_service(ps_id,ps_date,pay_id,service_id)
values(1, '2022-01-01',1,1),
(2, '2022-01-05',2,2),
(3, '2022-01-10',3,3),
(4, '2022-01-15',4,4),
(5, '2022-01-20',5,5),
(6, '2022-01-25',6,6),
(7, '2022-02-01',7,7),
(8, '2022-02-05',8,8),
(9, '2022-02-10',9,9),
(10, '2022-02-15',10,10),
(11, '2022-03-01',11,11),
(12, '2022-03-05',12,12),
(13, '2022-03-10',13,13),
(14, '2022-03-15',14,14),
(15, '2022-04-01',15,15),
(16, '2022-04-05',16,16),
(17, '2022-04-10',17,17),
(18, '2022-04-15',18,18),
(19, '2022-05-01',19,19),
(20, '2022-05-05',20,20);

use saloon_management;
create table appointment(
app_id int primary key,
app_date date,
emp_id int,
cust_id int,
service_id int,
constraint emp_job foreign key(emp_id)
references employee(emp_id),
constraint cust_app foreign key(cust_id)
references customer(cust_id),
constraint service_method foreign key(service_id)
references service(service_id));
insert into appointment(app_id,app_date,emp_id,cust_id,service_id)
values(1, '2022-01-01',1,100,1),
(2, '2022-01-05',2,101,2),
(3, '2022-01-10',3,102,3),
(4, '2022-01-15',4,103,4),
(5, '2022-01-20',5,104,5),
(6, '2022-01-25',6,105,6),
(7, '2022-02-01',7,106,7),
(8, '2022-02-05',8,107,8),
(9, '2022-02-10',9,108,9),
(10, '2022-02-15',10,109,10),
(11, '2022-03-01',11,110,11),
(12, '2022-03-05',12,111,12),
(13, '2022-03-10',13,112,13),
(14, '2022-03-15',14,113,14),
(15, '2022-04-01',15,114,15),
(16, '2022-04-05',16,115,16),
(17, '2022-04-10',17,116,17),
(18, '2022-04-15',18,117,18),
(19, '2022-05-01',19,118,19),
(20, '2022-05-05',20,119,20);
-- retrieve all customer who have booked an appointment
create view saloon as
select c.*from customer c join appointment a on c.cust_id = a.cust_id;

-- retrieve all appointments booked for a specific date
create view appointment_date as
select*from appointment where app_date = '2022-01-05';

-- get all customer names and contact
create view cust_details as
select name,contact
from customer;

-- retrieve all services provided to a specific customer
delimiter // 
create procedure service_details()
begin
select s.*from service s join appointment a 
on s.service_id = a.service_id
where a.cust_id = 1;
end //
delimiter ;
call service_details();

-- get all customer who not booked an appointment in the last 6 months
delimiter //
create procedure appointment_booked()
begin
select c.*from customer c
where c.cust_id not in(
select a.cust_id from appointment a
 where a.app_date >= date_sub(
curdate(),interval 6 month));
end //
delimiter ;
call appointment_booked();
 
 
-- get all employees who are available to provide service on a specific date
delimiter //
create procedure specific_date()
begin
select*from employee e 
where e.emp_id not in(
select a.emp_id from appointment a
where a.app_date = '2022-01-05');
end //
delimiter ;
call specific_date();

-- get all customers assigned to a specific employee
delimiter //
create procedure customer_details()
begin
select c.*from customer c
join appointment a
on c.cust_id = a.cust_id
where a.emp_id = 5;
end //
delimiter ;
call customer_details;

-- get the cost of the specific service 
delimiter // 
create procedure service_amount(in id int) 
begin
select service_cost from service
where service_id = id;
end //
delimiter ;
call service_amount(2);
drop procedure service_amount;

-- get all customer who have booked appointments between jan 5,2022,and april 10
delimiter //
create procedure booking_details()
begin
select*from appointment
where app_date between 
'2022-01-05' and '2022-04-10';
end //
delimiter ;
drop procedure booking_details;
call  booking_details;

-- retrieve the service with the highest cost
delimiter //
create procedure highest_cost(in ser_cost varchar(20) ,  limitcount int)
begin
select*from service
where service_cost = ser_cost  limit 
limitcount;
end //
delimiter ;
call highest_cost(8000,2);











  












 
 
 
 
 
 