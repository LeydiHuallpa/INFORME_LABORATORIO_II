/*
Plantilla de script posterior a la implementación							
--------------------------------------------------------------------------------------
 Este archivo contiene instrucciones de SQL que se anexarán al script de compilación.		
 Use la sintaxis de SQLCMD para incluir un archivo en el script posterior a la implementación.			
 Ejemplo:      :r .\miArchivo.sql								
 Use la sintaxis de SQLCMD para hacer referencia a una variable en el script posterior a la implementación.		
 Ejemplo:      :setvar TableName miTabla							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
CREATE PROC insertar_datos @id int, @ape varchar(25), @nom varchar(25), @cod varchar(10),@sal decimal(9,2)
AS
DECLARE @cod VARCHAR(10);
set @cod = LEFT(@nom,1) + @ape;
INSERT INTO mis_empleados VALUES(@id, @ape, @nom, @cod, @sal);
GO

EXEC insertar_datos 3,'Gomes Alban','Juan PAblo','jgomes',1100;
EXEC insertar_datos 4,'Quiroz Ardile','Judit','jquiroz',750;
EXEC insertar_datos 5,'Soria Peralta ','Pedro','psoria',1550;

GO
