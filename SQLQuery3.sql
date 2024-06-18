USE qrpy;

SELECT * FROM dbo.proceso;

TRUNCATE TABLE dbo.proceso;

dbcc checkident('proceso', RESEED, 0)

INSERT INTO dbo.proceso(text)
VALUES('CINCO')