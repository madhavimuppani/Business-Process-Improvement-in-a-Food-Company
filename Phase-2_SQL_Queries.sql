
/* distributor placed which products for order */ 
select di.Distributor_ID, di.First_Name, di.Last_Name, do.Orders_ID, po.Product_ID, o.Orders_Date,  fp.Product_Name, fp.Processed_Date  from Distributor di 
left join Distributor_Orders do on di.Distributor_Orders_ID = do.Distributor_Orders_ID
left join Orders o on do.Orders_ID = o.Orders_ID
left join Product_Orders po on o.Product_Orders_ID = po.Product_Orders_ID 
left join Finished_Product fp on po.Product_ID  = fp.Product_ID 


/* what are all the raw materials supplier supplied and their corresponding quality check info */

select s.Supplier_ID, s.Supplier_Name, rm.Raw_Material_Name, rmqc.Checked_Date, rmqc.Hederonic_Scale_Rating  from Supplier s 
left join Raw_Materials rm on s.Supplier_ID = rm.Supplier_ID
left join RawMaterial_Quality_Check rmqc on rm.Raw_Material_ID = rmqc.Raw_Material_ID 


/* what are all the raw materials used for finished products and their quality check info */ 

select  fp.Product_Name, rm.Raw_Material_Name  from RawMaterials_FinishedProducts rmfp 
join Finished_Product fp on rmfp.Product_ID = fp.Product_ID 
join Raw_Materials rm on rmfp.Raw_Material_ID = rm.Raw_Material_ID 

/* what finished productsand are approved and rejected  */

select fp.Product_Name, fpqc.Checked_Date, fpqc.Sensory_rating  from FinishedProduct_Quality_Check fpqc
join Finished_Product fp on fpqc.Product_ID = fp.Product_ID where fpqc.Sensory_rating < 6

select fp.Product_Name, fpqc.Checked_Date, fpqc.Sensory_rating  from FinishedProduct_Quality_Check fpqc
join Finished_Product fp on fpqc.Product_ID = fp.Product_ID where fpqc.Sensory_rating >= 6

/* what raw materials are approved and rejected  */

select rm.Raw_Material_Name, rmqc.Checked_Date, rmqc.Hederonic_Scale_Rating  from RawMaterial_Quality_Check rmqc
join Raw_Materials rm on rmqc.Raw_Material_ID = rm.Raw_Material_ID where rmqc.Hederonic_Scale_Rating <6

select rm.Raw_Material_Name, rmqc.Checked_Date, rmqc.Hederonic_Scale_Rating  from RawMaterial_Quality_Check rmqc
join Raw_Materials rm on rmqc.Raw_Material_ID = rm.Raw_Material_ID where rmqc.Hederonic_Scale_Rating >=6


/* number of raw materials that are rejected */ 
select count(Raw_Material_ID) from RawMaterial_Quality_Check rmqc where rmqc.Hederonic_Scale_Rating < 6

