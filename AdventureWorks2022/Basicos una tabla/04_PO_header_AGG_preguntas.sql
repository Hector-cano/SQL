
USE AdventureWorks2022

Select top 10 * from Purchasing.PurchaseOrderHeader
WHERE RevisionNumber= 4;

-- 01 ¿Cuál es la suma total de SubTotal para todos los registros?

SELECT SUM(SubTotal) as total from Purchasing.PurchaseOrderHeader;

-- 02 ¿Cuál es el valor promedio de TaxAmt en la tabla?

SELECT AVG(TaxAmt) as AVG_TaxAmt from Purchasing.PurchaseOrderHeader;

-- 03 ¿Cuántos registros tienen un Status igual a 4?

SELECT Status=4 from Purchasing.PurchaseOrderHeader;****

-- 04 ¿Cuál es el TotalDue más alto en la tabla?

SELECT max(TotalDue) from Purchasing.PurchaseOrderHeader;

-- 05 ¿Cuál es el SubTotal más bajo en la tabla?

SELECT min(TotalDue) from Purchasing.PurchaseOrderHeader;

-- 06 ¿Cuál es la cantidad de órdenes por cada EmployeeID?

SELECT EmployeeID from Purchasing.PurchaseOrderHeader *******

-- 07 ¿Qué ShipMethodID tiene el promedio más alto de Freight?

Select ShipMethodID, AVG(Freight) as Avarage from Purchasing.PurchaseOrderHeader group by ShipMethodID order by Avarage desc; *******--------
Select top(1) ShipMethodID, AVG(Freight) as Avarage from Purchasing.PurchaseOrderHeader group by ShipMethodID order by Avarage desc;

-- 08 ¿Cuántos registros hay en la tabla que tengan un VendorID mayor que 1600?

SELECT VendorID as superior_to_1600 FROM Purchasing.PurchaseOrderHeader WHERE VendorID > 1600;
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE VendorID > 1600;

-- 09 ¿Cuál es la suma de TotalDue para cada ShipMethodID?

SELECT SUM(TotalDue) From Purchasing.PurchaseOrderHeader group by ShipMethodID;

-- 10 ¿Cuál es el número total de órdenes realizadas en cada año (basándote en OrderDate)?

SELECT COUNT (*) FROM Purchasing.PurchaseOrderHeader GROUP BY OrderDate;***********

-- 11 ¿Qué VendorID tiene la mayor cantidad de registros asociados?

SELECT TOP 1 VendorID, COUNT(*) AS cantidad_registros FROM Purchasing.PurchaseOrderHeader GROUP BY VendorID ORDER BY cantidad_registros DESC;

-- 12 ¿Cuál es la suma total de Freight por cada Status?

SELECT SUM(Freight) FROM Purchasing.PurchaseOrderHeader order by Status --***********

-- 13 ¿Cuál es la cantidad de órdenes realizadas por cada ShipDate?

-- 14 ¿Qué EmployeeID generó el mayor TotalDue en suma?

Select top 1 EmployeeID, SUM(TotalDue) as SumaTotal From Purchasing.PurchaseOrderHeader GROUP BY EmployeeID order by SumaTotal DESC;

-- 15 ¿Cuál es el valor promedio de SubTotal para las órdenes con un TaxAmt superior a 50?

SELECT AVG(SubTotal) FROM Purchasing.PurchaseOrderHeader WHERE TaxAmt > 50;

-- 16 ¿Cuál es el valor máximo de TaxAmt para cada ShipMethodID?

SELECT max(TaxAmt) FROM Purchasing.PurchaseOrderHeader for shipmethodID;**********

-- 17 ¿Cuántos registros hay por cada combinación de EmployeeID y ShipMethodID?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 18 ¿Cuál es el valor mínimo de Freight para los registros con un SubTotal mayor a 20,000?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 19 ¿Cuál es el promedio de TotalDue para cada año basado en OrderDate?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 20 ¿Qué Purchasing.PurchaseOrderHeaderID tiene el mayor valor de Freight asociado?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 21 ¿Cuál es la suma total de TaxAmt por cada combinación de Status y ShipMethodID?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 22 ¿Cuántos registros tienen un OrderDate en cada mes del año 2011?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 23 ¿Cuál es el valor promedio de Freight para los registros donde EmployeeID es mayor que 255?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 24 ¿Cuál es el menor SubTotal registrado por cada ShipMethodID?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 25 ¿Cuántos registros tienen un ShipDate anterior al ModifiedDate?

SELECT  FROM Purchasing.PurchaseOrderHeader