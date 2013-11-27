select e.empid, e.firstname+N' '+e.lastname,count(m.mgrid)
from hr.employees AS e
INNER JOIN HR.Employees AS m ON e.empid=m.mgrid
GROUP BY e.empid,e.firstname,e.lastname
Order By e.empid;

SELECT D.n as day, D1.n as shift
from dbo.nums AS D
CROSS JOIN dbo.nums AS D1
WHERE D.n<=7 AND D1.n<=3
order by day, shift;
