select * from sales;
select Customers ,GeoID  from sales;
select Amount ,GeoID, Customers, Amount/Customers 'divided'from sales;
select * from sales
where Customers>200;
select * from sales
where Customers>200
order by Customers desc;
select * from sales
where GeoID='G5'
order by PID desc,Customers desc;

select * from sales;

select * from sales
where Amount>1000 and year(SaleDate)=2021;

select* from sales
where Boxes>50 and Boxes<=60
order by Boxes desc;

select* from sales
where Boxes between 50 and 60
order by Boxes desc;

select SaleDate,Amount, weekday(SaleDate) as 'weekday'
from sales
where weekday(SaleDate)=5;

SELECT SaleDate, dayofweek(SaleDate) as 'dayofweek' from sales;

select * from people
WHERE team ='Delish' or team='Yummies';

select * from people
where team in ('Delish','Jucies');

# pattern
select * FROM people
where Salesperson like '%z%';

select Amount ,Customers,
	case when Amount<1000 then 'under 1k'
		when Amount<5000 then 'under 5k'
        when Amount<10000 then 'under 10k'
        else '10k or more'
        end as 'Amount as catagory'
   from sales




