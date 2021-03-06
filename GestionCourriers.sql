USE [master]
GO
/****** Object:  Database [GestionCourriers]    Script Date: 01/06/2015 13:20:21 ******/
CREATE DATABASE [GestionCourriers] ON  PRIMARY 
( NAME = N'GestionCourriers', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.YUNHO\MSSQL\DATA\GestionCourriers.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GestionCourriers_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.YUNHO\MSSQL\DATA\GestionCourriers_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GestionCourriers] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GestionCourriers].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GestionCourriers] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [GestionCourriers] SET ANSI_NULLS OFF
GO
ALTER DATABASE [GestionCourriers] SET ANSI_PADDING OFF
GO
ALTER DATABASE [GestionCourriers] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [GestionCourriers] SET ARITHABORT OFF
GO
ALTER DATABASE [GestionCourriers] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [GestionCourriers] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [GestionCourriers] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [GestionCourriers] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [GestionCourriers] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [GestionCourriers] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [GestionCourriers] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [GestionCourriers] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [GestionCourriers] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [GestionCourriers] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [GestionCourriers] SET  DISABLE_BROKER
GO
ALTER DATABASE [GestionCourriers] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [GestionCourriers] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [GestionCourriers] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [GestionCourriers] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [GestionCourriers] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [GestionCourriers] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [GestionCourriers] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [GestionCourriers] SET  READ_WRITE
GO
ALTER DATABASE [GestionCourriers] SET RECOVERY SIMPLE
GO
ALTER DATABASE [GestionCourriers] SET  MULTI_USER
GO
ALTER DATABASE [GestionCourriers] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [GestionCourriers] SET DB_CHAINING OFF
GO
USE [GestionCourriers]
GO
/****** Object:  Table [dbo].[unites]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unites](
	[id_unit] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](50) NOT NULL,
	[adresse] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__unites__D01F3DE97F60ED59] PRIMARY KEY CLUSTERED 
(
	[id_unit] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[id_contact] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](30) NULL,
	[adresse] [nvarchar](255) NULL,
	[type] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contact] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[agent_bo]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[agent_bo](
	[id_agent] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](30) NULL,
	[prenom] [nvarchar](30) NULL,
	[tel] [nvarchar](15) NULL,
	[login] [nvarchar](30) NULL,
	[password] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_agent] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dossier]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dossier](
	[ref_dos] [nvarchar](10) NOT NULL,
	[intitule] [nvarchar](30) NOT NULL,
	[objet] [nvarchar](200) NOT NULL,
	[date_creation] [date] NOT NULL,
	[date_cloture] [date] NULL,
	[id_agent] [int] NOT NULL,
 CONSTRAINT [PK__dossier__8BE744B807F6335A] PRIMARY KEY CLUSTERED 
(
	[ref_dos] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[agent_ua]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[agent_ua](
	[id_agent] [int] IDENTITY(1,1) NOT NULL,
	[nom] [nvarchar](30) NOT NULL,
	[prenom] [nvarchar](30) NOT NULL,
	[tel] [nvarchar](15) NOT NULL,
	[adresse] [nvarchar](255) NOT NULL,
	[sexe] [char](1) NOT NULL,
	[login] [nvarchar](30) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[id_unit] [int] NULL,
 CONSTRAINT [PK__agent_ua__0C90BC7203317E3D] PRIMARY KEY CLUSTERED 
(
	[id_agent] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[courrier]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courrier](
	[ref_cour] [nvarchar](10) NOT NULL,
	[type] [nvarchar](30) NOT NULL,
	[nature] [nvarchar](30) NOT NULL,
	[date_creation] [date] NOT NULL,
	[objet] [nvarchar](200) NOT NULL,
	[etat] [nvarchar](30) NOT NULL,
	[id_agent_bo] [int] NOT NULL,
	[id_agent_ua] [int] NOT NULL,
	[reponse] [bit] NOT NULL,
	[courrier_reponse] [nvarchar](10) NULL,
	[ref_dos] [nvarchar](10) NULL,
 CONSTRAINT [PK__courrier__3AC2DB5A108B795B] PRIMARY KEY CLUSTERED 
(
	[ref_cour] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[copies]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[copies](
	[id_copie] [int] IDENTITY(1,1) NOT NULL,
	[ref_cour] [nvarchar](10) NULL,
	[id_contact] [int] NULL,
	[id_unit] [int] NULL,
	[motif] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_copie] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courrier_depart]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courrier_depart](
	[ref_cour] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK__courrier__3AC2DB5A267ABA7A] PRIMARY KEY CLUSTERED 
(
	[ref_cour] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[courrier_arrive_interne]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[courrier_arrive_interne](
	[ref_cour] [nvarchar](10) NOT NULL,
	[date_cour] [date] NOT NULL,
	[date_arrivee] [date] NOT NULL,
	[type] [nvarchar](20) NOT NULL,
	[id_contact] [int] NOT NULL,
 CONSTRAINT [PK__courrie___3AC2DB5A20C1E124] PRIMARY KEY CLUSTERED 
(
	[ref_cour] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reaffectations]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reaffectations](
	[id_reaf] [int] IDENTITY(1,1) NOT NULL,
	[date_reaf] [date] NOT NULL,
	[motif] [nvarchar](200) NOT NULL,
	[ref_cour] [nvarchar](10) NOT NULL,
	[id_agent_courant] [int] NOT NULL,
	[id_agent_cible] [int] NOT NULL,
 CONSTRAINT [PK__reaffect__0F48581D3C69FB99] PRIMARY KEY CLUSTERED 
(
	[id_reaf] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facture]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facture](
	[ref_cour] [nvarchar](10) NOT NULL,
	[device] [nvarchar](10) NULL,
	[montant] [decimal](15, 2) NULL,
 CONSTRAINT [PK_facture] PRIMARY KEY CLUSTERED 
(
	[ref_cour] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[destinataires_courrier]    Script Date: 01/06/2015 13:20:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[destinataires_courrier](
	[id_contact] [int] NOT NULL,
	[ref_cour] [nvarchar](10) NOT NULL,
 CONSTRAINT [pk_dest] PRIMARY KEY CLUSTERED 
(
	[id_contact] ASC,
	[ref_cour] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__dossier__id_agen__09DE7BCC]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[dossier]  WITH CHECK ADD  CONSTRAINT [FK__dossier__id_agen__09DE7BCC] FOREIGN KEY([id_agent])
REFERENCES [dbo].[agent_bo] ([id_agent])
GO
ALTER TABLE [dbo].[dossier] CHECK CONSTRAINT [FK__dossier__id_agen__09DE7BCC]
GO
/****** Object:  ForeignKey [FK__agent_ua__id_uni__0519C6AF]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[agent_ua]  WITH CHECK ADD  CONSTRAINT [FK__agent_ua__id_uni__0519C6AF] FOREIGN KEY([id_unit])
REFERENCES [dbo].[unites] ([id_unit])
GO
ALTER TABLE [dbo].[agent_ua] CHECK CONSTRAINT [FK__agent_ua__id_uni__0519C6AF]
GO
/****** Object:  ForeignKey [FK__courrier__courri__787EE5A0]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[courrier]  WITH CHECK ADD  CONSTRAINT [FK__courrier__courri__787EE5A0] FOREIGN KEY([courrier_reponse])
REFERENCES [dbo].[courrier] ([ref_cour])
GO
ALTER TABLE [dbo].[courrier] CHECK CONSTRAINT [FK__courrier__courri__787EE5A0]
GO
/****** Object:  ForeignKey [FK__courrier__id_age__02084FDA]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[courrier]  WITH CHECK ADD  CONSTRAINT [FK__courrier__id_age__02084FDA] FOREIGN KEY([id_agent_ua])
REFERENCES [dbo].[agent_ua] ([id_agent])
GO
ALTER TABLE [dbo].[courrier] CHECK CONSTRAINT [FK__courrier__id_age__02084FDA]
GO
/****** Object:  ForeignKey [FK__courrier__id_age__1273C1CD]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[courrier]  WITH CHECK ADD  CONSTRAINT [FK__courrier__id_age__1273C1CD] FOREIGN KEY([id_agent_bo])
REFERENCES [dbo].[agent_bo] ([id_agent])
GO
ALTER TABLE [dbo].[courrier] CHECK CONSTRAINT [FK__courrier__id_age__1273C1CD]
GO
/****** Object:  ForeignKey [FK__courrier__ref_do__4D94879B]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[courrier]  WITH CHECK ADD  CONSTRAINT [FK__courrier__ref_do__4D94879B] FOREIGN KEY([ref_dos])
REFERENCES [dbo].[dossier] ([ref_dos])
GO
ALTER TABLE [dbo].[courrier] CHECK CONSTRAINT [FK__courrier__ref_do__4D94879B]
GO
/****** Object:  ForeignKey [FK__copies__id_conta__1BFD2C07]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[copies]  WITH CHECK ADD FOREIGN KEY([id_contact])
REFERENCES [dbo].[contacts] ([id_contact])
GO
/****** Object:  ForeignKey [FK__copies__id_unit__1CF15040]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[copies]  WITH CHECK ADD  CONSTRAINT [FK__copies__id_unit__1CF15040] FOREIGN KEY([id_unit])
REFERENCES [dbo].[unites] ([id_unit])
GO
ALTER TABLE [dbo].[copies] CHECK CONSTRAINT [FK__copies__id_unit__1CF15040]
GO
/****** Object:  ForeignKey [FK__copies__ref_cour__1B0907CE]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[copies]  WITH CHECK ADD  CONSTRAINT [FK__copies__ref_cour__1B0907CE] FOREIGN KEY([ref_cour])
REFERENCES [dbo].[courrier] ([ref_cour])
GO
ALTER TABLE [dbo].[copies] CHECK CONSTRAINT [FK__copies__ref_cour__1B0907CE]
GO
/****** Object:  ForeignKey [FK__courrier___ref_c__286302EC]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[courrier_depart]  WITH CHECK ADD  CONSTRAINT [FK__courrier___ref_c__286302EC] FOREIGN KEY([ref_cour])
REFERENCES [dbo].[courrier] ([ref_cour])
GO
ALTER TABLE [dbo].[courrier_depart] CHECK CONSTRAINT [FK__courrier___ref_c__286302EC]
GO
/****** Object:  ForeignKey [FK__courrie_a__id_co__239E4DCF]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[courrier_arrive_interne]  WITH CHECK ADD  CONSTRAINT [FK__courrie_a__id_co__239E4DCF] FOREIGN KEY([id_contact])
REFERENCES [dbo].[contacts] ([id_contact])
GO
ALTER TABLE [dbo].[courrier_arrive_interne] CHECK CONSTRAINT [FK__courrie_a__id_co__239E4DCF]
GO
/****** Object:  ForeignKey [FK__courrie_a__ref_c__22AA2996]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[courrier_arrive_interne]  WITH CHECK ADD  CONSTRAINT [FK__courrie_a__ref_c__22AA2996] FOREIGN KEY([ref_cour])
REFERENCES [dbo].[courrier] ([ref_cour])
GO
ALTER TABLE [dbo].[courrier_arrive_interne] CHECK CONSTRAINT [FK__courrie_a__ref_c__22AA2996]
GO
/****** Object:  ForeignKey [FK__reaffecta__id_ag__3F466844]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[reaffectations]  WITH CHECK ADD  CONSTRAINT [FK__reaffecta__id_ag__3F466844] FOREIGN KEY([id_agent_courant])
REFERENCES [dbo].[agent_ua] ([id_agent])
GO
ALTER TABLE [dbo].[reaffectations] CHECK CONSTRAINT [FK__reaffecta__id_ag__3F466844]
GO
/****** Object:  ForeignKey [FK__reaffecta__id_ag__403A8C7D]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[reaffectations]  WITH CHECK ADD  CONSTRAINT [FK__reaffecta__id_ag__403A8C7D] FOREIGN KEY([id_agent_cible])
REFERENCES [dbo].[agent_ua] ([id_agent])
GO
ALTER TABLE [dbo].[reaffectations] CHECK CONSTRAINT [FK__reaffecta__id_ag__403A8C7D]
GO
/****** Object:  ForeignKey [FK__reaffecta__ref_c__3E52440B]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[reaffectations]  WITH CHECK ADD  CONSTRAINT [FK__reaffecta__ref_c__3E52440B] FOREIGN KEY([ref_cour])
REFERENCES [dbo].[courrier_arrive_interne] ([ref_cour])
GO
ALTER TABLE [dbo].[reaffectations] CHECK CONSTRAINT [FK__reaffecta__ref_c__3E52440B]
GO
/****** Object:  ForeignKey [FK__facture__ref_cou__74AE54BC]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[facture]  WITH CHECK ADD  CONSTRAINT [FK__facture__ref_cou__74AE54BC] FOREIGN KEY([ref_cour])
REFERENCES [dbo].[courrier_arrive_interne] ([ref_cour])
GO
ALTER TABLE [dbo].[facture] CHECK CONSTRAINT [FK__facture__ref_cou__74AE54BC]
GO
/****** Object:  ForeignKey [FK__destinata__id_co__31EC6D26]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[destinataires_courrier]  WITH CHECK ADD FOREIGN KEY([id_contact])
REFERENCES [dbo].[contacts] ([id_contact])
GO
/****** Object:  ForeignKey [FK__destinata__ref_c__32E0915F]    Script Date: 01/06/2015 13:20:29 ******/
ALTER TABLE [dbo].[destinataires_courrier]  WITH CHECK ADD  CONSTRAINT [FK__destinata__ref_c__32E0915F] FOREIGN KEY([ref_cour])
REFERENCES [dbo].[courrier_depart] ([ref_cour])
GO
ALTER TABLE [dbo].[destinataires_courrier] CHECK CONSTRAINT [FK__destinata__ref_c__32E0915F]
GO
