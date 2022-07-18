drop database
create database supplier;
use supplier;
create table suppliers(sid int,sname varchar(20),city varchar(20),primary key(sid));
create table parts(pid int,pname varchar(20),color varchar(10),primary key(pid));
create table catalog(sid int,pid int,foreign key (sid)references suppliers(sid),foreign key(pid)references parts(pid),cost float(6),primary key(sid,pid);
insert into suppliers values (1001,'acme widget','bangalore');
insert into suppliers values (1002,'johns','kolkata');
insert into suppliers values (1003,'vimal','mumbai');
insert into suppliers values (1004,'reliance','delhi');
commit;
select*from suppliers;
insert into parts values(20001,'book','red');
insert into parts values(20002,'pen','red');
insert into parts values(20003,'pencil','green');
insert into parts values(20004,'mobile','green');
insert into parts values(20005,'charger','black');
commit;
select *from parts;
insert into catalog values(1001,20001,10);
insert into catalog values(1001,20002,10);
insert into catalog values(1001,20003,30);
insert into catalog values(1001,20004,10);
insert into catalog values(1001,20005,10);
insert into catalog values(1002,20001,10);
insert into catalog values(1002,20002,20);
insert into catalog values(1003,20003,30);
insert into catalog values(1004,20003,40);
commit;
select *from catalog;
select distinct p.pname from parts p ,catalog c where p.pid=c.pid;
select *from catalog;
select s.sname from suppliers s where not exists((select p.pid from parts p)minus(select c.pid from catalog c where c.sid));
 select distinct 

