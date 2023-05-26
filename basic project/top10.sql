select GeoID, sum(Amount)  , avg (Amount)
from sales
group by GeoID;

select g.Geo, sum(s.Amount)  , avg (s.Amount)
from sales s
join geo g on s.GeoID = g.GeoID
group by g.GeoID;

select pr.Product, p.Team, sum(s.Amount)  , avg (s.Amount)
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID =s.PID
group by   pr.PID ,p.Team;


select pr.Product,  sum(s.Amount) as 'Total amount'
from sales s
join products pr on pr.PID = s.PID
group by pr.Product
order by `Total amount`  desc;

select pr.Product,  sum(s.Amount) as 'Total amount'
from sales s
join products pr on pr.PID = s.PID
group by pr.Product
order by `Total amount`  desc
limit 10;




