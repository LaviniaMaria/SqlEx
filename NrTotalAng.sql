CREATE FUNCTION totalAng(@mgrid INT) 
RETURNS INT
AS
BEGIN
	DECLARE @cursorid AS INT;
	DECLARE @suma AS INT;
	SET @suma=0;
	DECLARE my_cursor CURSOR FAST_FORWARD FOR
		SELECT empid
		FROM Angajati
		WHERE mgrid=@mgrid;
		
	OPEN my_cursor;
	FETCH NEXT FROM my_cursor INTO @cursorid;
	WHILE @@FETCH_STATUS = 0
	BEGIN
	   SET @suma=@suma+1+dbo.totalAng(@cursorid);
	FETCH NEXT FROM my_cursor INTO @cursorid;
	END;
	CLOSE my_cursor;
	DEALLOCATE my_cursor;

	RETURN @suma;
END
GO

select * from Angajati;

SELECT DISTINCT a.empid,dbo.totalAng(a.empid)
FROM Angajati a
INNER JOIN Angajati m ON a.empid=m.mgrid;
		
	