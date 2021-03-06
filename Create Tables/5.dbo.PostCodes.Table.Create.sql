USE [Turkey]
GO
/****** Object:  Table [dbo].[PostCodes]    Script Date: 7.05.2019 04:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCodes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[NeighborhoodId] [int] NOT NULL,
	[TownId] [int] NOT NULL,
	[DistrictId] [int] NOT NULL,
	[ProvinceId] [int] NOT NULL,
 CONSTRAINT [PK_PostCodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PostCodes]  WITH CHECK ADD  CONSTRAINT [FK_PostCodes_Districts] FOREIGN KEY([DistrictId])
REFERENCES [dbo].[Districts] ([Id])
GO
ALTER TABLE [dbo].[PostCodes] CHECK CONSTRAINT [FK_PostCodes_Districts]
GO
ALTER TABLE [dbo].[PostCodes]  WITH CHECK ADD  CONSTRAINT [FK_PostCodes_Neighborhoods] FOREIGN KEY([NeighborhoodId])
REFERENCES [dbo].[Neighborhoods] ([Id])
GO
ALTER TABLE [dbo].[PostCodes] CHECK CONSTRAINT [FK_PostCodes_Neighborhoods]
GO
ALTER TABLE [dbo].[PostCodes]  WITH CHECK ADD  CONSTRAINT [FK_PostCodes_Provinces] FOREIGN KEY([ProvinceId])
REFERENCES [dbo].[Provinces] ([Id])
GO
ALTER TABLE [dbo].[PostCodes] CHECK CONSTRAINT [FK_PostCodes_Provinces]
GO
ALTER TABLE [dbo].[PostCodes]  WITH CHECK ADD  CONSTRAINT [FK_PostCodes_Towns] FOREIGN KEY([TownId])
REFERENCES [dbo].[Towns] ([Id])
GO
ALTER TABLE [dbo].[PostCodes] CHECK CONSTRAINT [FK_PostCodes_Towns]
GO
