USE [GravityBooks_DWH]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimshippingMethod](
	[shipping_key]  INT PRIMARY KEY IDENTITY(1,1),
	[method_id_bk] [int] NOT NULL,
	[method_name] [varchar](100) NULL,
	[cost] [decimal](6, 2) NULL
)
GO