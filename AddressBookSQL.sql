show databases;

#--UC1-Ablity_to_create_addressBookServiceDatabase

create database AdressBookService;
use AdressBookService;

#--UC2-Create AdressBook Table---
create table AdressBookService(
firstName varchar(20) not null,
lastName varchar(20) not null,
address varchar(50) not null,
city varchar(15) not null,
state varchar(15) not null,
zip int not null,
phoneNumber double not null,
email varchar(50) not null );

#--UC3-Insert new contacts--
 insert into AdressBookService (firstname, lastname, address,city, state, zip,phoneNumber,email) 
 values
 ('Deepak', 'Reddy','Medak','Hyderabad','Telangana',502303,9182510123,'deepak@gmail.com'),
 ('Ashok ','Goud','Badhrachalam','Khammam','Telangana',500038,8179795646,'ashok@gmail.com'),
 ('Rushi','Singa','Kadapa','Kadapa','Andra Pradesh',520102,8416658966,'rushi@gmail.com'),
 ('mahesh','kumar','Mdhuranagar','Hyderabad','Telangana',500047,7207455581,'mahesh@gmail.com');
 desc AdressBookService;
 select * from AdressBookService;
 
 #--UC4-Edit contacts using their name--
 
 update AdressBookService set lastName = 'Goud' WHERE firstname = 'mahesh';
update AdressBookService set phoneNumber=8179036684 WHERE firstname='Ashok';
select * from AdressBookService;

#--UC5-delete the contact by their lastname
delete from AdressBookService  where  lastname='Goud';
select * from AdressBookService;

#-- UC6- retrieve the contact by city or state
 select * from AdressBookService where city = 'Hyderabad' or State='Telangana';
 
#-- UC7 addressbook size by city and state
 select count(firstname) from AdressBookService where city = 'Hyderabad';
 select count(firstName) from AdressBookService where state = 'Telangana';
select count(firstname) from AdressBookService where city='Kadapa'; 

select * from AdressBookService;

 

 
 
 
 

