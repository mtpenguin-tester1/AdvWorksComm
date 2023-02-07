﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Dropping extended properties'
GO
EXEC sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'SalesLT', 'TABLE', N'Customer', 'COLUMN', N'PasswordSalt'
GO
PRINT N'Altering [SalesLT].[Customer]'
GO
ALTER TABLE [SalesLT].[Customer] ALTER COLUMN [PasswordSalt] [nchar] (10) NULL
GO

﻿SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
