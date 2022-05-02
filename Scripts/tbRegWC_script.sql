USE [WC]
GO

/****** Object:  Table [dbo].[regWC]    Script Date: 4/1/2021 11:50:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[regWC](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[manufacturer] [varchar](10) NOT NULL,
	[model] [varchar](10) NOT NULL CONSTRAINT [DF_regWC_model]  DEFAULT (space((1))),
	[startYear] [varchar](4) NOT NULL CONSTRAINT [DF_regWC_startYear]  DEFAULT (space((1))),
	[endYear] [varchar](4) NOT NULL CONSTRAINT [DF_regWC_endYear]  DEFAULT (space((1))),
	[nDoors] [varchar](4) NOT NULL CONSTRAINT [DF_regWC_nDoors]  DEFAULT ('----'),
	[withDriver] [varchar](4) NOT NULL CONSTRAINT [DF_regWC_withDriver]  DEFAULT ('----'),
	[withPassenger] [varchar](4) NOT NULL CONSTRAINT [DF_regWC_withPassenger]  DEFAULT ('----'),
	[withBoth] [varchar](4) NOT NULL CONSTRAINT [DF_regWC_withBoth]  DEFAULT ('----'),
 CONSTRAINT [PK_regWC_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


