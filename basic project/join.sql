select * from sales;

select* from people;

select * from products;

select * from geo;

select s.SaleDate , s.Amount , p.Salesperson, s.SPID, p.SPID
from sales s
join people p on p.SPID=s.SPID;

select s.SaleDate, s.Amount , pr.product
from sales s
left join products pr on pr.PID = s.PID;

select s.SaleDate , s.Amount , p.Salesperson, pr.product, p.Team
from sales s
join people p on p.SPID=s.SPID
 join products pr on pr.PID = s.PID;
 
 select s.SaleDate , s.Amount , p.Salesperson, pr.product, p.Team
from sales s
join people p on p.SPID=s.SPID
 join products pr on pr.PID = s.PID
 where p.team='';
 
 select s.SaleDate , s.Amount , p.Salesperson, pr.product, p.Team , g.Geo
from sales s
join people p on p.SPID=s.SPID
 join products pr on pr.PID = s.PID
 join geo g on g.GeoID= s.GeoID
 where p.team='' and g.Geo in ('India','Canada');