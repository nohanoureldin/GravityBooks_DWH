USE [GravityBooks_DWH]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimBook](
	[book_key]  INT PRIMARY KEY IDENTITY(1,1),
	[book_id_bk] [int] NOT NULL,
	[title] [varchar](400) NULL,
	[isbn13] [varchar](13) NULL,
	[num_pages] [int] NULL,
	[publication_date] [date] NULL,
	[language_name] [varchar](50) NULL,
	[publisher_name] [nvarchar](1000) NULL,
	[author_name] [varchar](400) NULL
)
GO


