insert into WareHouseEmployeeDemographics (EmployeeID, First_Name, Last_Name, Gender)
values
(1013, 'Darryly', 'Philbin', 'Male');

insert into WareHouseEmployeeDemographics 
values
(1050, 'Roy', 'Anderson', 31 ,'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40 ,'Male'),
(105, 'Val', 'Johnson', 31 ,'Female');

select*
from WareHouseEmployeeDemographics;

select*
from EmployeeDemographics
full outer join WareHouseEmployeeDemographics
on EmployeeDemographics.EmployeeID = 
WareHouseEmployeeDemographics.EmployeeID
-- melakukan join

select*
from EmployeeDemographics
union
select *
from WareHouseEmployeeDemographics;
-- union untuk menggabungkan dua tabel dalam bentuk baris baru ke bawah
-- dimana field yang dipilih antara tabel satu dan lainnya harus sama

select*
from EmployeeDemographics
union all
select *
from WareHouseEmployeeDemographics
order by EmployeeID asc;
-- union all untuk menggabungkan dua tabel dalam bentuk baris baru ke bawah dan tetap masuk meskipun ada data duplikat
-- dimana field yang dipilih antara tabel satu dan lainnya harus sama
-- order by untuk mengurutkan

select EmployeeID, First_Name, Age
from EmployeeDemographics
union 
select EmployeeId, Job_Title, Salary
from EmployeeSalary
order by EmployeeID asc;
-- dalam hal ini salah dan perlu dilakukan hati-hati jika menggunakan union
-- salah karena firstname dan jobtitle dijadikan satu baris
-- dalam memilih data harus sama ini pentingnya union