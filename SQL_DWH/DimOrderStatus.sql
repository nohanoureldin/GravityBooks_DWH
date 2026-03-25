USE [GravityBooks_DWH]
GO
CREATE TABLE [dbo].[DimOrderStatus](
    [status_key]    [int] IDENTITY(1,1) NOT NULL,
    [status_id_bk]  [int] NOT NULL,
    [status_name]   [varchar](100) NULL,
PRIMARY KEY CLUSTERED ([status_key] ASC)
)
GO