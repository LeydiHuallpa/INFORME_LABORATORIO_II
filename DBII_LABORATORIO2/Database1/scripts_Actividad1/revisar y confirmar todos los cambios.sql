select * from mis empleados
SELECT [Begin Time],[RowLog Contents 1],[Transaction Name],Operation FROM sys.fn_dblog(NULL,NULL)
WHERE AllocUnitName = 'dbo.mis_empleados' AND Operation IN('LOP_DELETE_ROWS')
GO 