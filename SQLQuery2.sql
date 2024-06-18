USE qrpy;
SELECT * FROM dbo.proceso;

INSERT INTO dbo.proceso(text)
VALUES('TREINTAUNO')

declare @max int;  
select @max = max(ID) from dbo.proceso;  
dbcc checkident('dbo.proceso',reseed,@max)

dbcc checkident('proceso', RESEED, 3)

--Eliminar TABLA
DROP TABLE dbo.proceso;

--ELIMINAR FILA
DELETE FROM dbo.proceso
WHERE ID = 31;

--ELIMINAR INFORMACION TABLA
TRUNCATE TABLE dbo.proceso;


UPDATE dbo.proceso
	SET text = 'TREINTA'
	WHERE ID = 30
