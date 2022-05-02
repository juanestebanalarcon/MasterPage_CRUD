USE [WC]
GO

/****** Object:  Table [dbo].[newSubPart]    Script Date: 4/1/2021 11:50:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[newSubPart](
	[partNumber] [varchar](50) NOT NULL,
	[make] [varchar](10) NOT NULL,
	[front] [varchar](10) NOT NULL,
	[driversSide] [varchar](20) NULL,
	[passengerSide] [varchar](20) NULL,
 CONSTRAINT [PK_newSubPart] PRIMARY KEY CLUSTERED 
(
	[partNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


