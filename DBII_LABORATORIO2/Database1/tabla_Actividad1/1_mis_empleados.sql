﻿CREATE TABLE [dbo].[mis_empleados]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [APELLIDOS] VARCHAR(25) NULL, 
    [NOMBRES] VARCHAR(25) NULL, 
    [CODIGO] VARCHAR(10) NULL, 
    [SALARIO] NUMERIC(9, 2) NULL
)