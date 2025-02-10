create database sasi;
use sasi;
create table buses(BUS_id int primary key,BUS_name varchar(100) not null,capcity int not null,source varchar(100),Destination varchar(100),cost varchar(100) not null );
insert into buses values(2560,'Yamini travels',40,'hyderabad','guntur','870/-'),
						(2561,'orange travels',40,'guntur','vizianagaram','790/-'),
                        (2562,'morning travels',40,'vijaywada','vizianagaram','990/-'),
                        (2563,'varun travels',40,'vijaywada','bangalore','1090/-'),
                        (2564,'shiva travels',40,'tirupathi','vizianagaram','1090/-'),
                        (2565,'svkdt travels',40,'vizianagaram','tirupathi','990/-'),
                        (2566,'paper travels',40,'bangalore','vijaywada','890/-'),
                        (2567,'owl travels',40,'vizianagaram','vijaywada','990/-'),
                        (2568,'night travels',40,'vizianagaram','guntur','1120/-'),
                        (2569,'happy travels',40,'guntur','hyderabad','1190/-');
                        insert into buses values(2569,'happy travels',40,'guntur','hyderabad','1190/-');
                        insert into buses values(2222,'raghu travels',40,'hyderabad','banglore','890/-');
                        insert into buses values(2571,'owl travels',45,'hyderabad','vizianagaram','880/-');
                        insert into buses values(2572,'owl travels',45,'hyderabad','tirupathi','880/-');
                        insert into buses values(2573,'happy travels',45,'hyderabad','vizianagaram','880/-');
                        select * from buses;
create table drivers(DID int primary key,BUS_id int,Dname varchar(30),salary varchar(100),gmail varchar(30), foreign key(BUS_id) references buses(BUS_id)on update cascade on delete cascade);
insert into drivers values(2421,121,'david','45000/-','david@yahho.in'),
						  (2422,2560,'ravi','30000/-','ravi@gmail.com'),
                          (2423,2562,'revanth','40000/-','revanth@yahoo.in'),
                          (2424,2563,'rakesh','50000/-','rakhi@gmail.com'),
                          (2425,2564,'srinivas','47000/-','Srinu675@gmail.com'),
                          (2426,2565,'Shayam','30000/-','shayam@gmail.com'),
                          (2427,2566,'raghu','25000/-','raghu@yahoo.in'),
                          (2428,2567,'vijay','35000/-','vijay@gmail.com'),
                          (2429,2568,'phani','25000/-','phani@gmail.com'),
                          (2430,2569,'haresh','30000/-','haresh@outlook.in');
                          insert into drivers values(2430,2569,'haresh','30000/-','haresh@outlook.in');
                          drop table drivers;
                          select * from drivers;
                          delete from buses where BUS_id=2569;
alter table drivers modify salary varchar(100);
select * from buses where source = "hyderbad" and destination = "guntur";
select * from buses;
update buses set capcity = 40 where BUS_id = 121;
create table payment(CD_no int ,CVV int,CDHolder varchar(30),BUS_id int, foreign key(BUS_id)references buses(BUS_id));
insert into payment values(13245135,132,'shasank',2560);
select * from payment;
desc payment;
drop table payment;
show tables;
create table users(Fname varchar(30),Lname varchar(30),phnno bigint,userN varchar(30) primary key,pass varchar(30) not null unique);
select * from users;
alter table users modify userN varchar(30)primary key;
drop table admin;
create table Adminusers(FirstName varchar(30),LastName varchar(30),userName varchar(30),Passd varchar(30) ,gmail varchar(40));
insert into Adminusers values('ravi','kumar','ravi','rav123','ravi@yahoo.in');
insert into Adminusers values('sasi','kumar','sasi','sAsi@123','sasi@gmail.com');
desc Adminusers;
desc users;
select * from Adminusers;
create table  reservation(BUS_id int,userN varchar(30), seatNo int,foreign key(BUS_id) references  buses(BUS_id),foreign key(userN) references users(userN));
show tables;
create table userData(Name varchar(30),gmail varchar(30),phnoNo bigint,age int,gender varchar(5));
select * from userData;
truncate reservation;
select * from reserved;
show tables;
select * from payment;
select count(BUS_id) from buses;

SELECT * FROM reservation;
create table reserved (
	busid int,
    seatid int,
    foreign key(busid) references buses(BUS_id) on update cascade on delete cascade
);

insert into reserved values(2560,3),(2560,10);
select * from reserved where busid=2560;
select * from reserved;
use sasi;
select * from payment;
set sql_safe_updates =0;
delete from payment where CD_no = '6565656';
select * from buses;
select * from users;
show tables;
select * from users;
delete from users where pass = "sAsi@123";
