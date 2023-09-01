USE [AskEntra]
GO

/****** Object:  Table [dbo].[Notes30]    Script Date: 8/30/2023 10:41:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes30](
	[(Do Not Modify) Note] [nvarchar](255) NULL,
	[(Do Not Modify) Row Checksum] [nvarchar](255) NULL,
	[(Do Not Modify) Modified On] [datetime] NULL,
	[Customer (Regarding) (Customer Product)] [nvarchar](255) NULL,
	[Owner (Regarding) (Customer Product)] [nvarchar](255) NULL,
	[Created On] [datetime] NULL,
	[Last Contact Date: Account Team/Customer (Regarding) (Customer P] [datetime] NULL,
	[Deployment Status (Regarding) (Customer Product)] [nvarchar](255) NULL,
	[Sales Stage (Regarding) (Customer Product)] [nvarchar](255) NULL,
	[Top Opportunities? (Regarding) (Customer Product)] [nvarchar](255) NULL,
	[FastTrack Engaged? (Regarding) (Customer Product)] [nvarchar](255) NULL,
	[Is Partner Engaged? (Regarding) (Customer Product)] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL

) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

