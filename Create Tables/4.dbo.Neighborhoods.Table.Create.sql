USE [Turkey]
GO
/****** Object:  Table [dbo].[Neighborhoods]    Script Date: 7.05.2019 04:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Neighborhoods](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TownId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[ProvinceId] [int] NOT NULL,
 CONSTRAINT [PK_Neighborhoods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Neighborhoods]  WITH CHECK ADD  CONSTRAINT [FK_Neighborhoods_Districts] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Districts] ([Id])
GO
ALTER TABLE [dbo].[Neighborhoods] CHECK CONSTRAINT [FK_Neighborhoods_Districts]
GO
ALTER TABLE [dbo].[Neighborhoods]  WITH CHECK ADD  CONSTRAINT [FK_Neighborhoods_Provinces] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Provinces] ([Id])
GO
ALTER TABLE [dbo].[Neighborhoods] CHECK CONSTRAINT [FK_Neighborhoods_Provinces]
GO
ALTER TABLE [dbo].[Neighborhoods]  WITH CHECK ADD  CONSTRAINT [FK_Neighborhoods_Towns] FOREIGN KEY([TownId])
REFERENCES [dbo].[Towns] ([Id])
GO
ALTER TABLE [dbo].[Neighborhoods] CHECK CONSTRAINT [FK_Neighborhoods_Towns]
GO
