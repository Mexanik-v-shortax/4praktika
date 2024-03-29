USE [master]
GO
/****** Object:  Database [prak4_amir]    Script Date: 31.01.2024 21:25:43 ******/
CREATE DATABASE [prak4_amir]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'prak4_amir', FILENAME = N'C:\Users\79375\prak4_amir.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'prak4_amir_log', FILENAME = N'C:\Users\79375\prak4_amir_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [prak4_amir] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [prak4_amir].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [prak4_amir] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [prak4_amir] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [prak4_amir] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [prak4_amir] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [prak4_amir] SET ARITHABORT OFF 
GO
ALTER DATABASE [prak4_amir] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [prak4_amir] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [prak4_amir] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [prak4_amir] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [prak4_amir] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [prak4_amir] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [prak4_amir] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [prak4_amir] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [prak4_amir] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [prak4_amir] SET  DISABLE_BROKER 
GO
ALTER DATABASE [prak4_amir] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [prak4_amir] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [prak4_amir] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [prak4_amir] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [prak4_amir] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [prak4_amir] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [prak4_amir] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [prak4_amir] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [prak4_amir] SET  MULTI_USER 
GO
ALTER DATABASE [prak4_amir] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [prak4_amir] SET DB_CHAINING OFF 
GO
ALTER DATABASE [prak4_amir] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [prak4_amir] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [prak4_amir] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [prak4_amir] SET QUERY_STORE = OFF
GO
USE [prak4_amir]
GO
/****** Object:  Table [dbo].[Врачи]    Script Date: 31.01.2024 21:25:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Врачи](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FIO_doc] [nvarchar](255) NOT NULL,
	[SPEC_doc] [nvarchar](255) NOT NULL,
	[cost] [decimal](10, 2) NOT NULL,
	[percent_] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK__Врачи__3214EC27E3F33262] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Пациенты]    Script Date: 31.01.2024 21:25:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Пациенты](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[F_pac] [nvarchar](255) NOT NULL,
	[I_pac] [nvarchar](255) NOT NULL,
	[O_pac] [nvarchar](255) NOT NULL,
	[rozd] [date] NOT NULL,
	[Addres] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK__Пациенты__3214EC273E8FB4C0] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Прием_пациентов]    Script Date: 31.01.2024 21:25:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Прием_пациентов](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_doc] [int] NOT NULL,
	[ID_pac] [int] NOT NULL,
	[date_p] [date] NOT NULL,
 CONSTRAINT [PK__Прием_па__3214EC27EB2C27C1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Врачи] ON 

INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (1, N'Соколова Елена Викторовна', N'Невролог', CAST(7539.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (2, N'Григорьев Игорь Анатольевич', N'Офтальмолог', CAST(7539.00 AS Decimal(10, 2)), CAST(12.00 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (3, N'Павлова Марина Сергеевна', N'Травматолог', CAST(7539.00 AS Decimal(10, 2)), CAST(11.00 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (4, N'Козлов Александр Валентинович', N'Уролог', CAST(7539.00 AS Decimal(10, 2)), CAST(11.50 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (5, N'Иванова Наталья Александровна', N'Гинеколог', CAST(7539.00 AS Decimal(10, 2)), CAST(11.25 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (6, N'Смирнова Дарья Игоревна', N'Дерматолог', CAST(7539.00 AS Decimal(10, 2)), CAST(10.50 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (7, N'Никитин Василий Петрович', N'Кардиолог', CAST(7539.00 AS Decimal(10, 2)), CAST(12.50 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (8, N'Кузнецов Виктор Иванович', N'Педиатр', CAST(7539.00 AS Decimal(10, 2)), CAST(11.75 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (9, N'Морозова Анна Дмитриевна', N'Гинеколог', CAST(7539.00 AS Decimal(10, 2)), CAST(11.00 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (10, N'Петров Владимир Васильевич', N'Терапевт', CAST(7539.00 AS Decimal(10, 2)), CAST(10.25 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (11, N'Соколова Елена Викторовна', N'Невролог', CAST(7539.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (12, N'Соколова Елена Викторовна', N'Невролог', CAST(7539.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(5, 2)))
INSERT [dbo].[Врачи] ([ID], [FIO_doc], [SPEC_doc], [cost], [percent_]) VALUES (13, N'Соколова Елена Викторовна', N'Невролог', CAST(1100.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(5, 2)))
SET IDENTITY_INSERT [dbo].[Врачи] OFF
GO
SET IDENTITY_INSERT [dbo].[Пациенты] ON 

INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (1, N'Соколов', N'Александр', N'Иванович', CAST(N'1980-03-12' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (2, N'Григорьева', N'Елена', N'Александровна', CAST(N'1992-08-25' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (3, N'Павлов', N'Дмитрий', N'Петрович', CAST(N'1987-12-30' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (4, N'Козлова', N'Мария', N'Владимировна', CAST(N'1995-06-18' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (5, N'Иванов', N'Игорь', N'Сергеевич', CAST(N'2002-02-10' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (6, N'Смирнова', N'Анна', N'Ивановна', CAST(N'1978-11-05' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (7, N'Никитина', N'Дарья', N'Васильевна', CAST(N'1993-04-20' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (8, N'Кузнецов', N'Виктор', N'Дмитриевич', CAST(N'1990-09-22' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (9, N'Морозова', N'Александра', N'Игоревна', CAST(N'1985-01-15' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (10, N'Петров', N'Владислав', N'Андреевич', CAST(N'1976-07-29' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (11, N'Соколов', N'Александр', N'Иванович', CAST(N'1980-03-12' AS Date), N'пр. Победы, д. 8, кв. 21')
INSERT [dbo].[Пациенты] ([ID], [F_pac], [I_pac], [O_pac], [rozd], [Addres]) VALUES (12, N'Соколов', N'Александр', N'Иванович', CAST(N'1980-03-12' AS Date), N'ул. Пушкина, д. 20, кв. 15')
SET IDENTITY_INSERT [dbo].[Пациенты] OFF
GO
SET IDENTITY_INSERT [dbo].[Прием_пациентов] ON 

INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (1, 1, 3, CAST(N'2022-03-05' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (2, 2, 4, CAST(N'2022-03-10' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (3, 3, 5, CAST(N'2022-03-15' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (4, 4, 6, CAST(N'2022-03-20' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (5, 5, 7, CAST(N'2022-03-25' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (6, 6, 8, CAST(N'2022-04-05' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (7, 7, 9, CAST(N'2022-04-10' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (8, 8, 10, CAST(N'2022-04-15' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (9, 9, 1, CAST(N'2022-04-20' AS Date))
INSERT [dbo].[Прием_пациентов] ([ID], [ID_doc], [ID_pac], [date_p]) VALUES (10, 10, 2, CAST(N'2022-04-25' AS Date))
SET IDENTITY_INSERT [dbo].[Прием_пациентов] OFF
GO
ALTER TABLE [dbo].[Прием_пациентов]  WITH CHECK ADD  CONSTRAINT [FK__Прием_пац__ID_do__286302EC] FOREIGN KEY([ID_doc])
REFERENCES [dbo].[Врачи] ([ID])
GO
ALTER TABLE [dbo].[Прием_пациентов] CHECK CONSTRAINT [FK__Прием_пац__ID_do__286302EC]
GO
ALTER TABLE [dbo].[Прием_пациентов]  WITH CHECK ADD  CONSTRAINT [FK__Прием_пац__ID_pa__29572725] FOREIGN KEY([ID_pac])
REFERENCES [dbo].[Пациенты] ([ID])
GO
ALTER TABLE [dbo].[Прием_пациентов] CHECK CONSTRAINT [FK__Прием_пац__ID_pa__29572725]
GO
USE [master]
GO
ALTER DATABASE [prak4_amir] SET  READ_WRITE 
GO
