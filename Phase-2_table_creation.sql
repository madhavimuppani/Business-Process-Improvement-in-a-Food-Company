Drop table if exists Supplier;
Drop table if exists Department;
Drop table if exists Raw_Materials;
Drop table if exists Orders;
Drop table if exists Distributor;
Drop table if exists Finished_Product;
Drop table if exists Product_Orders;
Drop table if exists Distributor_Orders;
Drop table if exists RawMaterials_FinishedProduct;
Drop table if exists RawMaterial_Quality_Check;
Drop table if exists FinishedProduct_Quality_Check;


CREATE TABLE if not exists Supplier
(
	Supplier_ID int(8) PRIMARY key,
	Supplier_Name varchar(32),
	Location Varchar(32)
);

alter table Supplier modify column Location varchar(64)


CREATE TABLE if not exists Department
(
   Department_ID int(4) PRIMARY KEY, 
   Department_Name varchar(32)
);

alter table Department modify column Department_name varchar(64)

select * from Department


CREATE TABLE if not exists Raw_Materials
(
	Raw_Material_ID int(8) PRIMARY KEY,
	Raw_Materrial_Name varchar(32), 
	Supplied_Date Date, 
	Department_ID int(4), 
	Supplier_ID int(8)
);

alter table Raw_Materials rename column Raw_Materrial_Name to Raw_Material_Name

select * from Raw_Materials	

CREATE TABLE if not exists Orders
(
	Orders_ID int(6) PRIMARY KEY,
	Orders_Date Date, 
	Invoice_Code varchar(10),
	Orders_Quantity int(10),
	Distributor_Orders_ID int(10),
	Product_Orders_ID int(6)
);

alter table Orders modify Orders_ID int(8)

select * from Orders

CREATE TABLE if not exists Distributor
(
	Distributor_ID int(8) PRIMARY KEY,
	First_Name varchar(32),
	Last_Name varchar(32),
	Location varchar(32),
	Distributor_Orders_ID int(10)
);
alter table Distributor modify Location varchar(64);



select * from Distributor

CREATE TABLE if not exists Finished_Product
(
	Product_ID int(4) PRIMARY KEY, 
	Product_Name varchar(32),
	Batch_No varchar(10), 
	Processed_Date date,
	Department_ID int(4), 
	Product_Orders_ID int(6)
);


select * from Finished_Product

CREATE TABLE if not exists Product_Orders
(
	Product_Orders_ID int(6) PRIMARY KEY, 
	Product_Quantity int(4),
	Orders_ID int(6),
	Product_ID int(4)
);

alter table Product_Orders modify Orders_ID int(8)

select * from Product_Orders

CREATE TABLE if not exists Distributor_Orders
(
	Distributor_Orders_ID int(10) PRIMARY KEY,
	Distributor_ID int(6),
	Orders_ID int(8)
);

alter table Distributor_Orders modify Distributor_ID int(8);

create table if not exists RawMaterials_FinishedProducts
(
	RMPF_ID int(6) primary key,
	Raw_Material_ID int(8),
	Product_ID int(4)
);


select * from RawMaterials_FinishedProducts 

create table if not exists RawMaterial_Quality_Check
(
	RMQC_ID int(6) primary key,
	Hederonic_Scale_Rating int(1),
	Raw_Material_ID int(8)
);

alter table RawMaterial_Quality_Check add column Checked_Date date

select * from RawMaterial_Quality_Check

create table if not exists FinishedProduct_Quality_Check
(
	FPQC_ID int(6) primary key, 
	Sensory_rating int(1),
	Product_ID int(4)
);

select * from FinishedProduct_Quality_Check 

alter table FinishedProduct_Quality_Check add column Checked_Date date



alter table Raw_Materials add constraint foreign key (Department_ID) references Department(Department_ID);
alter table Raw_Materials add constraint foreign key (Supplier_ID) REFERENCES Supplier(Supplier_ID);
alter table Orders add constraint foreign key (Distributor_Orders_ID) REFERENCES Distributor_Orders(Distributor_Orders_ID);
alter table Orders add constraint foreign key (Product_Orders_ID) REFERENCES Product_Orders(Product_Orders_ID);
alter table Distributor add constraint foreign key (Distributor_Orders_ID) REFERENCES Distributor_Orders(Distributor_Orders_ID);
alter table Finished_Product add constraint foreign key (Product_Orders_ID) REFERENCES Product_Orders(Product_Orders_ID);
alter table Finished_Product add constraint foreign key (Department_ID) REFERENCES Department(Department_ID);
alter table Product_Orders add constraint foreign key (Orders_ID) REFERENCES Orders(Orders_ID);
alter table Product_Orders add constraint foreign key (Product_ID) REFERENCES Finished_Product(Product_ID);
alter table Distributor_Orders add constraint foreign key (Distributor_ID) REFERENCES Distributor(Distributor_ID);
alter table Distributor_Orders add constraint foreign key (Orders_ID) REFERENCES Orders(Orders_ID);
alter table RawMaterials_FinishedProducts add constraint foreign key (Raw_Material_ID) REFERENCES Raw_Materials(Raw_Material_ID);
alter table RawMaterials_FinishedProducts add constraint foreign key (Product_ID) REFERENCES Finished_Product(Product_ID);
alter table RawMaterial_Quality_Check add constraint foreign key (Raw_Material_ID) REFERENCES Raw_Materials(Raw_Material_ID);
alter table FinishedProduct_Quality_Check add constraint foreign key (Product_ID) REFERENCES Finished_Product(Product_ID);