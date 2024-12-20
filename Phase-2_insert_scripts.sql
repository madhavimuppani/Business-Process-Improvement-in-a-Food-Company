SET FOREIGN_KEY_CHECKS=0;

insert into Department values ('1024','Stores Department');
insert into Department values ('2087','Production Department');
insert into Department values ('3056','Accounting Department');
insert into Department values ('4089','Raw Material Quality Check Department');
insert into Department values ('5102','Quality Assurance and control Department');

select * from Department


insert into Supplier values ('12345678','Rachel Perez','123 Main St, Oakville, ON L6J 1J5, Canada');
insert into Supplier values ('98765432','    Brandon Foster','    456 High St, Brooklyn, NY 11215, USA');
insert into Supplier values ('45671234','    Amanda Martinez','    789 Spring Rd, Melbourne, VIC 3000, Australia');
insert into Supplier values ('87654321','    Jordan Nguyen','    1010 Oxford St, London W1D 1LN, United Kingdom');
insert into Supplier values ('34567812','    Lily Parker','    111 Pine Ave, Los Angeles, CA 90048, USA');
insert into Supplier values ('56781234','    Adrian Baker','    222 Maple St, Toronto, ON M4K 1N8, Canada');
insert into Supplier values ('43218765','    Sofia Hernandez','    333 Cherry Ln, Paris 75001, France');
insert into Supplier values ('76543218','    Max Smith','    444 Elm St, Chicago, IL 60611, USA');
insert into Supplier values ('21876543','    Maya Williams','    555 Cedar Ave, Sydney, NSW 2000, Australia');
insert into Supplier values ('65432187','    Ethan Davis','    666 Birch St, San Francisco, CA 94117, USA');

select * from Supplier

insert into Raw_Materials values ('72369847','Wheat flour','2021-10-06','4089','12345678');
insert into Raw_Materials values ('18937592','    Sugar cane','2022-05-01','4089','98765432');
insert into Raw_Materials values ('98765123','    Tomato paste','2022-02-14','4089','45671234');
insert into Raw_Materials values ('24681357','    Soybeans','2022-05-21','4089','87654321');
insert into Raw_Materials values ('30492681','    Cornmeal','2022-03-30','4089','34567812');
insert into Raw_Materials values ('75182469','    Olive oil','2022-09-17','4089','56781234');
insert into Raw_Materials values ('81693247','    Beef stock','2022-07-04','4089','43218765');
insert into Raw_Materials values ('23946715','    Cheese culture','2022-08-23','4089','76543218');
insert into Raw_Materials values ('51472938','    Apple cider vinegar','2022-04-12','4089','21876543');
insert into Raw_Materials values ('69348527','    Garlic powder','2022-11-29','4089','65432187');


select * from Raw_Materials

insert into Distributor values ('73528194','Ethan','Martinez','123 Main St, New York, NY 10001','52819454');
insert into Distributor values ('16483920','    Olivia','    Peterson','    456 Elm St, Los Angeles, CA 90001','48392047');
insert into Distributor values ('92358173','    Liam','    Kim','    789 Oak St, Houston, TX 77001','35817343');
insert into Distributor values ('72598413','    Emma','    Brown','    321 Maple St, Miami, FL 33010','59841321');
insert into Distributor values ('39827451','    Noah','    Davis','    987 Pine St, Chicago, IL 60601','82745174');
insert into Distributor values ('57294186','    Ava','    Wright','    654 Cedar St, San Francisco, CA 94101','29418634');
insert into Distributor values ('16829357','    William','    Murphy','    321 Birch St, Dallas, TX 75201','82935787');
insert into Distributor values ('63298417','    Mia','    Lee','    876 Walnut St, Boston, MA 02101','29841787');
insert into Distributor values ('19283745','    James','    Robinson','    543 Oakwood St, Seattle, WA 98101','28374553');
insert into Distributor values ('84627193','    Sophia','    Baker','    210 Maplewood St, Atlanta, GA 30301','62719318');


select * from Distributor


insert into Distributor_Orders values ('52819454','73528194','265498');
insert into Distributor_Orders values ('48392047','16483920','984763');
insert into Distributor_Orders values ('35817343','92358173','174329');
insert into Distributor_Orders values ('59841321','72598413','532198');
insert into Distributor_Orders values ('82745174','39827451','897432');
insert into Distributor_Orders values ('29418634','57294186','623489');
insert into Distributor_Orders values ('82935787','16829357','348759');
insert into Distributor_Orders values ('29841787','63298417','918764');
insert into Distributor_Orders values ('28374553','19283745','675921');
insert into Distributor_Orders values ('62719318','84627193','421897');


select * from Distributor_Orders


insert into Orders values ('265498','2022-06-23','986531','1','52819454','432198');
insert into Orders values ('984763','2022-11-04','247816','2','48392047','456717');
insert into Orders values ('174329','2022-01-09','735924','1','35817343','543253');
insert into Orders values ('532198','2022-12-14','619473','4','59841321','567889');
insert into Orders values ('897432','2022-07-28','528416','2','82745174','654362');
insert into Orders values ('623489','2022-10-07','364812','3','29418634','678934');
insert into Orders values ('348759','2022-08-11','198745','1','82935787','765491');
insert into Orders values ('918764','2022-05-19','456789','2','29841787','789067');
insert into Orders values ('675921','2022-03-09','978321','5','28374559','765421');
insert into Orders values ('421897','2022-02-02','281937','2','62719318','421897');


select * from Orders


insert into Product_Orders values ('432198','1','265498','123456');
insert into Product_Orders values ('456717','2','984763','654321');
insert into Product_Orders values ('543253','1','174329','234567');
insert into Product_Orders values ('567889','4','532198','765432');
insert into Product_Orders values ('654362','2','897432','345678');
insert into Product_Orders values ('678934','1','623489','876543');
insert into Product_Orders values ('765491','3','348759','456789');
insert into Product_Orders values ('789067','2','918764','987654');
insert into Product_Orders values ('765421','1','675921','567890');
insert into Product_Orders values ('421897','1','421897','987653');


select * from Product_Orders


insert into Finished_Product values ('123456','Crispy Chips','AB23','2021-06-17','5102','432198');
insert into Finished_Product values ('654321','    Zesty Sauce','    D4F6','2022-08-29','5102','456717');
insert into Finished_Product values ('234567','    Creamy Butter','    G5H8','2022-12-03','5102','543253');
insert into Finished_Product values ('765432','    Spicy Salsa','    N9M2','2022-02-14','5102','567889');
insert into Finished_Product values ('345678','    Sweet Spread','    P8R7','2022-07-08','5102','654362');
insert into Finished_Product values ('876543','    Savory Dip','    Q6T4','2022-09-21','5102','678934');
insert into Finished_Product values ('456789','    Tangy Dressing','    E3R9','2022-05-01','5102','765491');
insert into Finished_Product values ('987654','    Crunchy Granola','    K2J1','2022-11-11','5102','789067');
insert into Finished_Product values ('567890','    Nutty Bars','    T5Y4','2022-03-26','5102','765421');
insert into Finished_Product values ('987653','    Juicy Bites','    W8X7','2022-10-16','5102','421897');


select * from Finished_Product

insert into RawMaterials_FinishedProducts values ('643215','30492681','123456');
insert into RawMaterials_FinishedProducts values ('683212','75182469','123456');
insert into RawMaterials_FinishedProducts values ('932162','72369847','123456');
insert into RawMaterials_FinishedProducts values ('984321','98765123','765432');
insert into RawMaterials_FinishedProducts values ('564334','75182469','765432');
insert into RawMaterials_FinishedProducts values ('234844','98765123','456789');
insert into RawMaterials_FinishedProducts values ('139887','23946715','456789');
insert into RawMaterials_FinishedProducts values ('230043','69348527','456789');
insert into RawMaterials_FinishedProducts values ('134734','30492681','234567');
insert into RawMaterials_FinishedProducts values ('138476','23946715','234567');

select * from RawMaterials_FinishedProducts

insert into FinishedProduct_Quality_Check values ('654651','4','987653','2023-03-05');
insert into FinishedProduct_Quality_Check values ('684321','5','987653','2023-03-06');
insert into FinishedProduct_Quality_Check values ('841613','8','987653','2023-03-07');
insert into FinishedProduct_Quality_Check values ('476547','8','456789','2023-03-05');
insert into FinishedProduct_Quality_Check values ('834624','4','567890','2023-03-05');
insert into FinishedProduct_Quality_Check values ('294551','9','567890','2023-03-06');
insert into FinishedProduct_Quality_Check values ('239435','2','765432','2023-03-05');
insert into FinishedProduct_Quality_Check values ('298464','7','765432','2023-03-06');
insert into FinishedProduct_Quality_Check values ('948526','8','234567','2023-02-05');
insert into FinishedProduct_Quality_Check values ('982423','7','123456','2023-03-05');

select * from FinishedProduct_Quality_Check 

insert into RawMaterial_Quality_Check values ('238524','5','98765123','2023-03-01');
insert into RawMaterial_Quality_Check values ('316143','8','98765123','2023-03-02');
insert into RawMaterial_Quality_Check values ('509384','7','24681357','2023-03-01');
insert into RawMaterial_Quality_Check values ('986543','4','69348527','2023-03-01');
insert into RawMaterial_Quality_Check values ('987324','9','69348527','2023-03-02');
insert into RawMaterial_Quality_Check values ('156848','3','18937592','2023-03-01');
insert into RawMaterial_Quality_Check values ('684451','4','18937592','2023-03-02');
insert into RawMaterial_Quality_Check values ('383518','7','18937592','2023-03-03');
insert into RawMaterial_Quality_Check values ('998321','2','72369847','2023-03-01');
insert into RawMaterial_Quality_Check values ('248416','8','72369847','2023-03-02');

select * from RawMaterial_Quality_Check 