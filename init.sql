use oms;

insert into Roles(ID, RoleName) values(1, 'Administrator');
insert into Roles(ID, RoleName) values(2, 'Merchandiser');
insert into Roles(ID, RoleName) values(3, 'Supervisor');
insert into Roles(ID, RoleName) values(4, 'Customer');

insert into Regions(RegionName) values('North');
insert into Regions(RegionName) values('East');
insert into Regions(RegionName) values('South');
insert into Regions(RegionName) values('West');

insert into OrderStatuses(OrederStatusName) values('Created');
insert into OrderStatuses(OrederStatusName) values('Pending');
insert into OrderStatuses(OrederStatusName) values('Ordered');
insert into OrderStatuses(OrederStatusName) values('Delivered');

insert into Dimensions(DimensionName,NumberOfProducts) values('Item',1);
insert into Dimensions(DimensionName,NumberOfProducts) values('Box',5);
insert into Dimensions(DimensionName,NumberOfProducts) values('Package',10);

insert into CustomerTypes(Discount,MaxRange,MinRange,TypeName) values(0,1000,0,'Standart');
insert into CustomerTypes(Discount,MaxRange,MinRange,TypeName) values(0,3000,1000,'Silver');
insert into CustomerTypes(Discount,MaxRange,MinRange,TypeName) values(0,10000,3000,'Gold');
insert into CustomerTypes(Discount,MaxRange,MinRange,TypeName) values(0,null,10000,'Platinum');

insert into Users(Balance,Email,FirstName,LastName,Login,Password,CustomerTypeRef,RegionRef,RoleRef) values(10,'mail','firstName1','lastName1','Administrator','qwerty',1,2,1);
insert into Users(Balance,Email,FirstName,LastName,Login,Password,CustomerTypeRef,RegionRef,RoleRef) values(10,'mail','firstName2','lastName2','Merchandiser','qwerty',1,4,2);
insert into Users(Balance,Email,FirstName,LastName,Login,Password,CustomerTypeRef,RegionRef,RoleRef) values(10,'mail','firstName3','lastName3','Supervisor','qwerty',1,4,3);
insert into Users(Balance,Email,FirstName,LastName,Login,Password,CustomerTypeRef,RegionRef,RoleRef) values(10,'mail','firstName4','lastName4','Customer','qwerty',1,4,4);

UPDATE `oms`.`Users` SET `IsUserActive`=1 WHERE `ID`='1';
UPDATE `oms`.`Users` SET `IsUserActive`=1 WHERE `ID`='2';
UPDATE `oms`.`Users` SET `IsUserActive`=1 WHERE `ID`='3';
UPDATE `oms`.`Users` SET `IsUserActive`=1 WHERE `ID`='4';
