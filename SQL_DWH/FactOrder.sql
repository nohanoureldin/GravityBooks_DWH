USE [GravityBooks_DWH]
GO

/****** Object:  Table [dbo].[FactOrder]    Script Date: 26/03/2026 12:06:52 ص ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactOrder](
	[order_key] [int] IDENTITY(1,1) NOT NULL,
	[order_line_id_bk] [int] NOT NULL,
	[order_id_bk] [int] NOT NULL,
	[customer_key] [int] NOT NULL,
	[book_key] [int] NOT NULL,
	[date_key] [int] NOT NULL,
	[shipping_key] [int] NOT NULL,
	[price] [decimal](10, 2) NULL,
	[shipping_cost] [decimal](10, 2) NULL,
	[status_key] [int] NOT NULL,
	[quantity] [int] NULL,
	[sales_amount] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Book] FOREIGN KEY([book_key])
REFERENCES [dbo].[DimBook] ([book_key])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_Fact_Book]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Customer] FOREIGN KEY([customer_key])
REFERENCES [dbo].[DimCustomer] ([customer_key])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_Fact_Customer]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Date] FOREIGN KEY([date_key])
REFERENCES [dbo].[DimDate] ([date_key])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_Fact_Date]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_Fact_OrderStatus] FOREIGN KEY([status_key])
REFERENCES [dbo].[DimOrderStatus] ([status_key])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_Fact_OrderStatus]
GO

ALTER TABLE [dbo].[FactOrder]  WITH CHECK ADD  CONSTRAINT [FK_Fact_Shipping] FOREIGN KEY([shipping_key])
REFERENCES [dbo].[DimShippingMethod] ([shipping_key])
GO

ALTER TABLE [dbo].[FactOrder] CHECK CONSTRAINT [FK_Fact_Shipping]
GO


