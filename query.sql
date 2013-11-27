select * from Angajati;
/*insert into Angajati Values('Robert',null,null,1,null);*/

SELECT a.ename,ISNULL(c.cname,'somer') 
FROM Angajati a
LEFT OUTER JOIN Companii AS c On a.compno=c.compno;

SELECT d.deptno,d.dname,COUNT(*) AS NR_ANG,(SELECT COUNT(*)
                                            FROM Angajati ang
											INNER JOIN Angajati m ON ang.empid=m.mgrid
											WHERE ang.deptno=d.deptno
											 )  AS Nr_mgr														  
FROM Angajati a
INNER JOIN Departamente d ON a.deptno=d.deptno
GROUP BY d.deptno,d.dname;

SELECT a.ename 
FROM ANGAJATI a
INNER JOIN Companii c ON a.compno=c.compno
WHERE a.oras<>c.oras;

SELECT top(5) a.ename,COUNT(*) nr_skills
FROM AngSkills as angs
INNER JOIN Angajati a ON a.empid=angs.empid
GROUP BY angs.empid,a.ename
ORDER BY nr_skills DESC;
