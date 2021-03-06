USE [Filmy]
GO
/****** Object:  Table [dbo].[Filmy]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmy](
	[IdFilmu] [varchar](10) NOT NULL,
	[Tytuł] [nvarchar](100) NOT NULL,
	[InnyTytuł] [nvarchar](100) NULL,
	[RokWydania] [int] NULL,
	[CzasTrwania] [int] NULL,
	[Ograniczenia] [int] NULL,
	[Kolor] [bit] NULL,
	[PozycjaNaRegale] [varchar](5) NOT NULL,
	[OcenaIMDB] [float] NULL,
	[Obejrzany] [bit] NOT NULL,
 CONSTRAINT [PK_Filmy] PRIMARY KEY CLUSTERED 
(
	[IdFilmu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmyDoGatunki]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmyDoGatunki](
	[IdFilmu] [varchar](10) NOT NULL,
	[IdGatunku] [varchar](10) NOT NULL,
 CONSTRAINT [PK_FilmyDoGatunki] PRIMARY KEY CLUSTERED 
(
	[IdFilmu] ASC,
	[IdGatunku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmyDoKompozytorzy]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmyDoKompozytorzy](
	[IdFilmu] [varchar](10) NOT NULL,
	[IdKompozytora] [varchar](10) NOT NULL,
 CONSTRAINT [PK_FilmyDoKompozytorzy] PRIMARY KEY CLUSTERED 
(
	[IdFilmu] ASC,
	[IdKompozytora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmyDoObsada]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmyDoObsada](
	[IdFilmu] [varchar](10) NOT NULL,
	[IdAktora] [varchar](10) NOT NULL,
 CONSTRAINT [PK_FilmyDoObsada] PRIMARY KEY CLUSTERED 
(
	[IdFilmu] ASC,
	[IdAktora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmyDoRezyserzy]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmyDoRezyserzy](
	[IdFilmu] [varchar](10) NOT NULL,
	[IdRezysera] [varchar](10) NOT NULL,
 CONSTRAINT [PK_FilmyDoReżyserzy] PRIMARY KEY CLUSTERED 
(
	[IdFilmu] ASC,
	[IdRezysera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmySzczegoly]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmySzczegoly](
	[IdFilmu] [varchar](10) NOT NULL,
	[Wytwórnia] [nvarchar](100) NULL,
	[Napisy] [bit] NULL,
	[IlośćPłyt] [int] NULL,
	[RodzajNośnika] [varchar](30) NULL,
	[Cena] [int] NULL,
	[OficjalnyZwiastun] [varchar](150) NULL,
	[Fabuła] [nvarchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gatunki]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gatunki](
	[IdGatunku] [varchar](10) NOT NULL,
	[Gatunek] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Gatunki] PRIMARY KEY CLUSTERED 
(
	[IdGatunku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kompozytorzy]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kompozytorzy](
	[IdKompozytora] [varchar](10) NOT NULL,
	[Imię] [nvarchar](30) NOT NULL,
	[Nazwisko] [nvarchar](40) NOT NULL,
	[DataUrodzenia] [date] NULL,
 CONSTRAINT [PK_Kompozytorzy] PRIMARY KEY CLUSTERED 
(
	[IdKompozytora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nagrody]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nagrody](
	[IdNagrody] [varchar](10) NOT NULL,
	[IdFilmu] [varchar](10) NOT NULL,
	[NazwaNagrody] [nvarchar](50) NULL,
	[Kategoria] [nvarchar](40) NULL,
	[RokOtrzymania] [int] NULL,
 CONSTRAINT [PK_Nagrody] PRIMARY KEY CLUSTERED 
(
	[IdNagrody] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Obsada]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Obsada](
	[IdAktora] [varchar](10) NOT NULL,
	[IdFilmu] [varchar](10) NOT NULL,
	[Imię] [nvarchar](30) NOT NULL,
	[Nazwisko] [nvarchar](40) NOT NULL,
	[PostaćFilmowa] [nvarchar](60) NOT NULL,
	[RokUrodzenia] [int] NULL,
 CONSTRAINT [PK_Obsada] PRIMARY KEY CLUSTERED 
(
	[IdAktora] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezyserzy]    Script Date: 25.05.2020 18:49:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezyserzy](
	[IdRezysera] [varchar](10) NOT NULL,
	[Imię] [nvarchar](30) NOT NULL,
	[Nazwisko] [nvarchar](40) NOT NULL,
	[DataUrodzenia] [date] NULL,
 CONSTRAINT [PK_Reżyserzy] PRIMARY KEY CLUSTERED 
(
	[IdRezysera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FilmyDoGatunki]  WITH CHECK ADD  CONSTRAINT [FK_FilmyDoGatunki_Filmy] FOREIGN KEY([IdFilmu])
REFERENCES [dbo].[Filmy] ([IdFilmu])
GO
ALTER TABLE [dbo].[FilmyDoGatunki] CHECK CONSTRAINT [FK_FilmyDoGatunki_Filmy]
GO
ALTER TABLE [dbo].[FilmyDoGatunki]  WITH CHECK ADD  CONSTRAINT [FK_FilmyDoGatunki_Gatunki] FOREIGN KEY([IdGatunku])
REFERENCES [dbo].[Gatunki] ([IdGatunku])
GO
ALTER TABLE [dbo].[FilmyDoGatunki] CHECK CONSTRAINT [FK_FilmyDoGatunki_Gatunki]
GO
ALTER TABLE [dbo].[FilmyDoKompozytorzy]  WITH CHECK ADD  CONSTRAINT [FK_FilmyDoKompozytorzy_Filmy] FOREIGN KEY([IdFilmu])
REFERENCES [dbo].[Filmy] ([IdFilmu])
GO
ALTER TABLE [dbo].[FilmyDoKompozytorzy] CHECK CONSTRAINT [FK_FilmyDoKompozytorzy_Filmy]
GO
ALTER TABLE [dbo].[FilmyDoKompozytorzy]  WITH CHECK ADD  CONSTRAINT [FK_FilmyDoKompozytorzy_Kompozytorzy] FOREIGN KEY([IdFilmu])
REFERENCES [dbo].[Kompozytorzy] ([IdKompozytora])
GO
ALTER TABLE [dbo].[FilmyDoKompozytorzy] CHECK CONSTRAINT [FK_FilmyDoKompozytorzy_Kompozytorzy]
GO
ALTER TABLE [dbo].[FilmyDoObsada]  WITH CHECK ADD  CONSTRAINT [FK_FilmyDoObsada_Filmy] FOREIGN KEY([IdFilmu])
REFERENCES [dbo].[Filmy] ([IdFilmu])
GO
ALTER TABLE [dbo].[FilmyDoObsada] CHECK CONSTRAINT [FK_FilmyDoObsada_Filmy]
GO
ALTER TABLE [dbo].[FilmyDoObsada]  WITH CHECK ADD  CONSTRAINT [FK_FilmyDoObsada_Obsada] FOREIGN KEY([IdAktora])
REFERENCES [dbo].[Obsada] ([IdAktora])
GO
ALTER TABLE [dbo].[FilmyDoObsada] CHECK CONSTRAINT [FK_FilmyDoObsada_Obsada]
GO
ALTER TABLE [dbo].[FilmyDoRezyserzy]  WITH CHECK ADD  CONSTRAINT [FK_FilmyDoReżyserzy_Filmy] FOREIGN KEY([IdFilmu])
REFERENCES [dbo].[Filmy] ([IdFilmu])
GO
ALTER TABLE [dbo].[FilmyDoRezyserzy] CHECK CONSTRAINT [FK_FilmyDoReżyserzy_Filmy]
GO
ALTER TABLE [dbo].[FilmyDoRezyserzy]  WITH CHECK ADD  CONSTRAINT [FK_FilmyDoReżyserzy_Reżyserzy] FOREIGN KEY([IdFilmu])
REFERENCES [dbo].[Rezyserzy] ([IdRezysera])
GO
ALTER TABLE [dbo].[FilmyDoRezyserzy] CHECK CONSTRAINT [FK_FilmyDoReżyserzy_Reżyserzy]
GO
ALTER TABLE [dbo].[FilmySzczegoly]  WITH CHECK ADD  CONSTRAINT [FK_FilmySzczegóły_Filmy] FOREIGN KEY([IdFilmu])
REFERENCES [dbo].[Filmy] ([IdFilmu])
GO
ALTER TABLE [dbo].[FilmySzczegoly] CHECK CONSTRAINT [FK_FilmySzczegóły_Filmy]
GO
ALTER TABLE [dbo].[Nagrody]  WITH CHECK ADD  CONSTRAINT [FK_Nagrody_Filmy] FOREIGN KEY([IdFilmu])
REFERENCES [dbo].[Filmy] ([IdFilmu])
GO
ALTER TABLE [dbo].[Nagrody] CHECK CONSTRAINT [FK_Nagrody_Filmy]
GO
