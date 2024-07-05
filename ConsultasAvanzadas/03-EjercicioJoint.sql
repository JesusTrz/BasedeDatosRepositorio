create database EJERCICIOJOIN;
use EJERCICIOJOIN;
------
select*from northwind.dbo.employees;

select top 0 employeeid as 'empleadoid',
CONCAT (firstname, ' ', lastname) as 'NombreCompleto',
title as 'Titulo',
hiredate as 'Fechacontratacion'
into EJERCICIOJOIN.dbo.empleados
from northwind.dbo.employees;
------
insert into EJERCICIOJOIN.dbo.empleados (NombreCompleto,Titulo,Fechacontratacion)
select
    CONCAT(firstname, ' ',lastname) as 'NombrenCompleto',
    title as 'titulo',
    hiredate as 'Fechacontratacion'
from northwind.dbo.employees;

select top 0 *
into EJERCICIOJOIN.dbo.dimempleados
from EJERCICIOJOIN.dbo.empleados

SELECT*FROM dimempleados