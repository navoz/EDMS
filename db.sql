USE [edms_db]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_UserId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] DROP CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[USER] DROP CONSTRAINT [FK_USER_UserProfile]
GO
ALTER TABLE [dbo].[USER] DROP CONSTRAINT [FK_USER_ORGANIZATION]
GO
ALTER TABLE [dbo].[DOCUMENT] DROP CONSTRAINT [FK_DOCUMENT_ORGANIZATION]
GO
ALTER TABLE [dbo].[DOCUMENT] DROP CONSTRAINT [FK_DOCUMENT_MODERATOR]
GO
ALTER TABLE [dbo].[DOCUMENT] DROP CONSTRAINT [FK_DOCUMENT_CREATOR]
GO
ALTER TABLE [dbo].[CLIENT_DOCUMENT] DROP CONSTRAINT [FK_CLIENT_DOCUMENT_USER]
GO
ALTER TABLE [dbo].[CLIENT_DOCUMENT] DROP CONSTRAINT [FK_CLIENT_DOCUMENT_DOCUMENT]
GO
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___Passw__6754599E]
GO
ALTER TABLE [dbo].[webpages_Membership] DROP CONSTRAINT [DF__webpages___IsCon__66603565]
GO
/****** Object:  Index [UQ__webpages__8A2B61606D0D32F4]    Script Date: 11.12.2016 21:34:44 ******/
ALTER TABLE [dbo].[webpages_Roles] DROP CONSTRAINT [UQ__webpages__8A2B61606D0D32F4]
GO
/****** Object:  Index [UQ__UserProf__E39E26655CD6CB2B]    Script Date: 11.12.2016 21:34:44 ******/
ALTER TABLE [dbo].[UserProfile] DROP CONSTRAINT [UQ__UserProf__E39E26655CD6CB2B]
GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[webpages_UsersInRoles]
GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[webpages_Roles]
GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[webpages_OAuthMembership]
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[webpages_Membership]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[UserProfile]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[USER]
GO
/****** Object:  Table [dbo].[ORGANIZATION]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[ORGANIZATION]
GO
/****** Object:  Table [dbo].[DOCUMENT]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[DOCUMENT]
GO
/****** Object:  Table [dbo].[CLIENT_DOCUMENT]    Script Date: 11.12.2016 21:34:44 ******/
DROP TABLE [dbo].[CLIENT_DOCUMENT]
GO
USE [master]
GO
/****** Object:  Database [edms_db]    Script Date: 11.12.2016 21:34:44 ******/
DROP DATABASE [edms_db]
GO
/****** Object:  Database [edms_db]    Script Date: 11.12.2016 21:34:44 ******/
CREATE DATABASE [edms_db] ON  PRIMARY 
( NAME = N'emds_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\emds_db.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'emds_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\emds_db_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [edms_db] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [edms_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [edms_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [edms_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [edms_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [edms_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [edms_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [edms_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [edms_db] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [edms_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [edms_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [edms_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [edms_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [edms_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [edms_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [edms_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [edms_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [edms_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [edms_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [edms_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [edms_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [edms_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [edms_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [edms_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [edms_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [edms_db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [edms_db] SET  MULTI_USER 
GO
ALTER DATABASE [edms_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [edms_db] SET DB_CHAINING OFF 
GO
USE [edms_db]
GO
/****** Object:  Table [dbo].[CLIENT_DOCUMENT]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENT_DOCUMENT](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CLIENT_ID] [bigint] NOT NULL,
	[DOCUMENT_ID] [bigint] NOT NULL,
 CONSTRAINT [PK_CLIENT_DOCUMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DOCUMENT]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DOCUMENT](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NUMBER] [bigint] NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[STATUS] [varchar](30) NOT NULL,
	[CREATE_DATE] [date] NOT NULL,
	[CONCLUSION_DATE] [date] NOT NULL,
	[ORGANIZATION_ID] [bigint] NOT NULL,
	[CREATOR_ID] [bigint] NOT NULL,
	[MODERATOR_ID] [bigint] NULL,
 CONSTRAINT [PK_DOCUMENT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ORGANIZATION]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ORGANIZATION](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](100) NOT NULL,
	[LEGAL_ADRESS] [varchar](100) NOT NULL,
	[POSTCODE] [int] NOT NULL,
	[PHONE_NUMBER] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ORGANIZATION] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USER]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USER](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[FIO] [varchar](100) NOT NULL,
	[EMAIL] [varchar](50) NOT NULL,
	[PHONE_NUMBER] [varchar](20) NOT NULL,
	[ORGANIZATION_ID] [bigint] NOT NULL,
	[PROFILE_ID] [int] NOT NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LOGIN] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 11.12.2016 21:34:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ORGANIZATION] ON 

INSERT [dbo].[ORGANIZATION] ([ID], [NAME], [LEGAL_ADRESS], [POSTCODE], [PHONE_NUMBER]) VALUES (1, N'Тестовая Организация', N'Владимир, Мира, 24', 600033, N'88005553535')
SET IDENTITY_INSERT [dbo].[ORGANIZATION] OFF
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

INSERT [dbo].[UserProfile] ([ID], [LOGIN]) VALUES (1, N'admin')
INSERT [dbo].[UserProfile] ([ID], [LOGIN]) VALUES (2, N'moderator')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A6D900CA69D6 AS DateTime), NULL, 1, CAST(0x0000A6D901121425 AS DateTime), 0, N'AKeYPxZAzA9ZKdFzs1ECdh7oEi0uVSaNWhh/18Nj/qE0V0J7YrVstfJ6SOHEyBlHMA==', CAST(0x0000A6D900CA69D6 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A6D900DD8D19 AS DateTime), NULL, 1, NULL, 0, N'APWLohITlls+QppcG1kwPCeGMMoU/hPLWlUaFRtRltNxgbpYtSygz4INw6HhbNUmVg==', CAST(0x0000A6D900DD8D19 AS DateTime), N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON 

INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'ADMINISTRATOR')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (3, N'CLIENT')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'MODERATOR')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 2)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__UserProf__E39E26655CD6CB2B]    Script Date: 11.12.2016 21:34:44 ******/
ALTER TABLE [dbo].[UserProfile] ADD UNIQUE NONCLUSTERED 
(
	[LOGIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__webpages__8A2B61606D0D32F4]    Script Date: 11.12.2016 21:34:44 ******/
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[CLIENT_DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_CLIENT_DOCUMENT_DOCUMENT] FOREIGN KEY([DOCUMENT_ID])
REFERENCES [dbo].[DOCUMENT] ([ID])
GO
ALTER TABLE [dbo].[CLIENT_DOCUMENT] CHECK CONSTRAINT [FK_CLIENT_DOCUMENT_DOCUMENT]
GO
ALTER TABLE [dbo].[CLIENT_DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_CLIENT_DOCUMENT_USER] FOREIGN KEY([CLIENT_ID])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[CLIENT_DOCUMENT] CHECK CONSTRAINT [FK_CLIENT_DOCUMENT_USER]
GO
ALTER TABLE [dbo].[DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_DOCUMENT_CREATOR] FOREIGN KEY([CREATOR_ID])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[DOCUMENT] CHECK CONSTRAINT [FK_DOCUMENT_CREATOR]
GO
ALTER TABLE [dbo].[DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_DOCUMENT_MODERATOR] FOREIGN KEY([MODERATOR_ID])
REFERENCES [dbo].[USER] ([ID])
GO
ALTER TABLE [dbo].[DOCUMENT] CHECK CONSTRAINT [FK_DOCUMENT_MODERATOR]
GO
ALTER TABLE [dbo].[DOCUMENT]  WITH CHECK ADD  CONSTRAINT [FK_DOCUMENT_ORGANIZATION] FOREIGN KEY([ORGANIZATION_ID])
REFERENCES [dbo].[ORGANIZATION] ([ID])
GO
ALTER TABLE [dbo].[DOCUMENT] CHECK CONSTRAINT [FK_DOCUMENT_ORGANIZATION]
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK_USER_ORGANIZATION] FOREIGN KEY([ORGANIZATION_ID])
REFERENCES [dbo].[ORGANIZATION] ([ID])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK_USER_ORGANIZATION]
GO
ALTER TABLE [dbo].[USER]  WITH CHECK ADD  CONSTRAINT [FK_USER_UserProfile] FOREIGN KEY([PROFILE_ID])
REFERENCES [dbo].[UserProfile] ([ID])
GO
ALTER TABLE [dbo].[USER] CHECK CONSTRAINT [FK_USER_UserProfile]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([ID])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
USE [master]
GO
ALTER DATABASE [edms_db] SET  READ_WRITE 
GO
