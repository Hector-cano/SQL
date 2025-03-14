
USE AdventureWorks2022

Select top 10 * from Purchasing.PurchaseOrderHeader
WHERE RevisionNumber= 4;

-- 01 �Cu�l es la suma total de SubTotal para todos los registros?

SELECT SUM(SubTotal) as total from Purchasing.PurchaseOrderHeader;

-- 02 �Cu�l es el valor promedio de TaxAmt en la tabla?

SELECT AVG(TaxAmt) as AVG_TaxAmt from Purchasing.PurchaseOrderHeader;

-- 03 �Cu�ntos registros tienen un Status igual a 4?

SELECT Status=4 from Purchasing.PurchaseOrderHeader;****

-- 04 �Cu�l es el TotalDue m�s alto en la tabla?

SELECT max(TotalDue) from Purchasing.PurchaseOrderHeader;

-- 05 �Cu�l es el SubTotal m�s bajo en la tabla?

SELECT min(TotalDue) from Purchasing.PurchaseOrderHeader;

-- 06 �Cu�l es la cantidad de �rdenes por cada EmployeeID?

SELECT EmployeeID from Purchasing.PurchaseOrderHeader *******

-- 07 �Qu� ShipMethodID tiene el promedio m�s alto de Freight?

Select ShipMethodID, AVG(Freight) as Avarage from Purchasing.PurchaseOrderHeader group by ShipMethodID order by Avarage desc; *******--------
Select top(1) ShipMethodID, AVG(Freight) as Avarage from Purchasing.PurchaseOrderHeader group by ShipMethodID order by Avarage desc;

-- 08 �Cu�ntos registros hay en la tabla que tengan un VendorID mayor que 1600?

SELECT VendorID as superior_to_1600 FROM Purchasing.PurchaseOrderHeader WHERE VendorID > 1600;
SELECT COUNT(*) FROM Purchasing.PurchaseOrderHeader WHERE VendorID > 1600;

-- 09 �Cu�l es la suma de TotalDue para cada ShipMethodID?

SELECT SUM(TotalDue) From Purchasing.PurchaseOrderHeader group by ShipMethodID;

-- 10 �Cu�l es el n�mero total de �rdenes realizadas en cada a�o (bas�ndote en OrderDate)?

SELECT COUNT (*) FROM Purchasing.PurchaseOrderHeader GROUP BY OrderDate;***********

-- 11 �Qu� VendorID tiene la mayor cantidad de registros asociados?

SELECT TOP 1 VendorID, COUNT(*) AS cantidad_registros FROM Purchasing.PurchaseOrderHeader GROUP BY VendorID ORDER BY cantidad_registros DESC;

-- 12 �Cu�l es la suma total de Freight por cada Status?

SELECT SUM(Freight) FROM Purchasing.PurchaseOrderHeader order by Status --***********

-- 13 �Cu�l es la cantidad de �rdenes realizadas por cada ShipDate?

-- 14 �Qu� EmployeeID gener� el mayor TotalDue en suma?

Select top 1 EmployeeID, SUM(TotalDue) as SumaTotal From Purchasing.PurchaseOrderHeader GROUP BY EmployeeID order by SumaTotal DESC;

-- 15 �Cu�l es el valor promedio de SubTotal para las �rdenes con un TaxAmt superior a 50?

SELECT AVG(SubTotal) FROM Purchasing.PurchaseOrderHeader WHERE TaxAmt > 50;

-- 16 �Cu�l es el valor m�ximo de TaxAmt para cada ShipMethodID?

SELECT max(TaxAmt) FROM Purchasing.PurchaseOrderHeader for shipmethodID;**********

-- 17 �Cu�ntos registros hay por cada combinaci�n de EmployeeID y ShipMethodID?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 18 �Cu�l es el valor m�nimo de Freight para los registros con un SubTotal mayor a 20,000?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 19 �Cu�l es el promedio de TotalDue para cada a�o basado en OrderDate?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 20 �Qu� Purchasing.PurchaseOrderHeaderID tiene el mayor valor de Freight asociado?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 21 �Cu�l es la suma total de TaxAmt por cada combinaci�n de Status y ShipMethodID?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 22 �Cu�ntos registros tienen un OrderDate en cada mes del a�o 2011?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 23 �Cu�l es el valor promedio de Freight para los registros donde EmployeeID es mayor que 255?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 24 �Cu�l es el menor SubTotal registrado por cada ShipMethodID?

SELECT  FROM Purchasing.PurchaseOrderHeader

-- 25 �Cu�ntos registros tienen un ShipDate anterior al ModifiedDate?

SELECT  FROM Purchasing.PurchaseOrderHeader