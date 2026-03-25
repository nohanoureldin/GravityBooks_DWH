USE [GravityBooks_DWH]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCustomer](
    [customer_key] INT PRIMARY KEY IDENTITY(1,1),
	[customer_id_bk] [int] NOT NULL,
	[first_name] [varchar](200) NULL,
	[last_name] [varchar](200) NULL,
	[email] [varchar](350) NULL,
	[street_number] [varchar](20) NULL,
	[street_name] [varchar](200) NULL,
	[city] [varchar](100) NULL,
	[country_name] [varchar](200) NULL,
	[address_status] [varchar](30) NULL,
	[start_date]    DATE NULL,
    [end_date]      DATE NULL,
    [is_current]    BIT NULL
)
GO
-- to handle any orders with invalid customer IDs
INSERT INTO DimCustomer VALUES (-1, 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', 'Unknown', '1900-01-01', NULL, 1)