use company;
 select * from sales;
 select distinct Unit_Profit from sales order by  Unit_Profit desc limit 10 offset 0;
 
 
 select * from sales order by Unit_Profit desc limit 5;
 

 select *  from sales where Ship_Mode = 'Economy' and Total_Amount>25000;
 
 
select * from sales
 where Category ='Technology' and Country ='Ireland' and Order_Date > '2020-01-01';

select Customer_Name,Order_id from sales where Customer_Name like 'j%n';

select Order_id,Product_Name from sales where Product_Name like 'Acco%';


select City,sum(Total_Amount) as Total_Sales
 from sales group by City order by Total_Sales desc limit 5;


select Customer_Name,Total_Amount 
from sales  order by Total_Amount desc limit 10, 10;

select sum(Total_Amount) as `Total revenue`,avg(Unit_Cost) as `average unit cost`,
count(Order_id) as `total number of orders` from sales;

select count(distinct region) from sales;

select Customer_Name , count(Order_id) as Order_Count
from sales group by Customer_Name order by Order_Count asc;

select Product_Name, sum(Total_Amount) as Total_Sales,
Rank() over (order by sum(Total_Amount) desc) as  Sales_Rank
 from sales group by Product_Name limit 5;



