CREATE DATABASE [Station1]
go
USE [Station1]
GO
/****** Object:  Table [dbo].[Administracia_i_hoz_personal]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administracia_i_hoz_personal](
	[Id_rabotnika] [int] IDENTITY(1,1) NOT NULL,
	[Doljnost] [int] NULL,
	[Familia] [varchar](50) NULL,
	[Imya] [varchar](50) NULL,
	[Otchestvo] [varchar](50) NULL,
	[Data_rojdenia] [date] NULL,
	[Kabinet] [int] NOT NULL,
	[Nomer_stancii] [int] NOT NULL,
	[Nomer_zarplati] [int] NOT NULL,
	[Login] [varchar](50) NULL,
 CONSTRAINT [PK__Administ__5249BF516F8D0A7C] PRIMARY KEY CLUSTERED 
(
	[Id_rabotnika] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dolgnosti]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dolgnosti](
	[Id_dolgnosti] [int] IDENTITY(1,1) NOT NULL,
	[Naimenovanie_dolgnosti] [varchar](50) NULL,
 CONSTRAINT [PK__Dolgnost__EC9156D7AFC426E3] PRIMARY KEY CLUSTERED 
(
	[Id_dolgnosti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Krov]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Krov](
	[Id_krovi] [int] NOT NULL,
	[Naimenovanie_krovi] [varchar](50) NULL,
	[Nomer_stancii] [int] NULL,
	[Nomer_zayavki] [int] NULL,
 CONSTRAINT [PK__Krov__B261380E19B094C0] PRIMARY KEY CLUSTERED 
(
	[Id_krovi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[Nomer_otdela] [int] IDENTITY(1,1) NOT NULL,
	[Nazvanie_otdela] [varchar](50) NULL,
	[Nomer_etaja] [int] NULL,
	[Kabinet_otdela] [int] NULL,
	[Stancia] [int] NULL,
 CONSTRAINT [PK__Otdel__8EF82A01F19B7DC2] PRIMARY KEY CLUSTERED 
(
	[Nomer_otdela] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Priem_pacientov]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Priem_pacientov](
	[Id_priema] [int] IDENTITY(1,1) NOT NULL,
	[Id_vracha] [int] NULL,
	[Id_pacienta] [int] NULL,
 CONSTRAINT [PK__Priem_pa__13DB79B91C9FF42A] PRIMARY KEY CLUSTERED 
(
	[Id_priema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Spisok_pacientov]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Spisok_pacientov](
	[Id_pacienta] [int] IDENTITY(1,1) NOT NULL,
	[Familia] [varchar](50) NULL,
	[Imya] [varchar](50) NULL,
	[Otchestvo] [varchar](50) NULL,
	[Data_rojdenia] [date] NULL,
	[Gruppa_krovi] [int] NULL,
	[Med_polis_pacienta] [varchar](50) NULL,
	[Pasport_pacienta] [varchar](50) NULL,
	[Snils_pacienta] [varchar](50) NULL,
 CONSTRAINT [PK__Spisok_p__3874F59E61A3D53F] PRIMARY KEY CLUSTERED 
(
	[Id_pacienta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stancia]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stancia](
	[Nomer_stancii] [int] IDENTITY(1,1) NOT NULL,
	[Naimenovanie_stancii] [varchar](50) NULL,
	[Adres_stancii] [varchar](50) NULL,
 CONSTRAINT [PK__Stancia__29181CE40C3CA2D0] PRIMARY KEY CLUSTERED 
(
	[Nomer_stancii] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Roled] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uslugi]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uslugi](
	[Id_uslugi] [int] IDENTITY(1,1) NOT NULL,
	[Stoimost_za_dozu_krovi] [int] NULL,
	[Id_priema] [int] NULL,
 CONSTRAINT [PK__Uslugi__9E76DAC7C71A428E] PRIMARY KEY CLUSTERED 
(
	[Id_uslugi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti](
	[Nomer_zayavki] [int] IDENTITY(1,1) NOT NULL,
	[Data] [date] NULL,
	[Kolichestvo] [int] NULL,
	[Nomer_stancii] [int] NULL,
 CONSTRAINT [PK__Vidacha___39214FD988202936] PRIMARY KEY CLUSTERED 
(
	[Nomer_zayavki] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vrachi_i_sredniy_med_personal]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vrachi_i_sredniy_med_personal](
	[Id_vracha] [int] IDENTITY(1,1) NOT NULL,
	[Dolgnost] [int] NULL,
	[Familia] [varchar](50) NULL,
	[Imya] [varchar](50) NULL,
	[Otchesvo] [varchar](50) NULL,
	[Data_rojdenia] [date] NULL,
	[Telephone] [int] NULL,
	[El_pochta] [varchar](50) NULL,
	[Nomer_kabineta] [int] NULL,
	[Nomer_otdela] [int] NULL,
	[Nomer_zarplati] [int] NULL,
	[Nomer_stancii] [int] NULL,
 CONSTRAINT [PK__Vrachi_i__9ADAA3587487764E] PRIMARY KEY CLUSTERED 
(
	[Id_vracha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zarplata]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zarplata](
	[Nomer_zarplati] [int] IDENTITY(1,1) NOT NULL,
	[Zarplata] [int] NULL,
	[Nomer_meciaca] [int] NULL,
	[God] [int] NULL,
 CONSTRAINT [PK__Zarplata__F2443B17CD1D8C9C] PRIMARY KEY CLUSTERED 
(
	[Nomer_zarplati] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zarplatniy_period]    Script Date: 29.04.2022 12:41:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zarplatniy_period](
	[Nomer_meciaca] [int] IDENTITY(1,1) NOT NULL,
	[Naimenovanie_meciaca] [varchar](50) NULL,
 CONSTRAINT [PK__Zarplatn__B78DBEBF51FBDCF7] PRIMARY KEY CLUSTERED 
(
	[Nomer_meciaca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Administracia_i_hoz_personal] ON 

INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (4, 3, N'Авдотья', N'Алла', N'Ибрагимовна', CAST(N'1969-11-16' AS Date), 5, 1, 3, N'Admin')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (5, 4, N'Крутова', N'Ирина', N'Сергеевна', CAST(N'1971-04-24' AS Date), 6, 1, 4, N'Admin')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (6, 1, N'Левашова', N'Светлана', N'Александровна', CAST(N'1996-07-25' AS Date), 12, 2, 1, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (7, 2, N'Сидоров', N'Иван', N'Николаевич', CAST(N'1982-04-17' AS Date), 13, 2, 2, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (8, 3, N'Мурзиненко', N'Злата', N'Александровна', CAST(N'1990-05-12' AS Date), 16, 2, 3, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (9, 4, N'Семенкова', N'Валентина', N'Петровна', CAST(N'1991-01-25' AS Date), 14, 2, 4, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (10, 5, N'Иванников', N'Сергей', N'Витальевич', CAST(N'1998-07-30' AS Date), 15, 1, 5, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (11, 15, N'Кутузов', N'Евгений', N'Сергеевич', CAST(N'1989-11-14' AS Date), 17, 2, 5, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (12, 6, N'Иванников', N'Егор', N'Владимирович', CAST(N'1967-08-22' AS Date), 18, 1, 6, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (13, 6, N'Никуличев', N'Александр', N'Сергеевич', CAST(N'1985-05-15' AS Date), 19, 2, 6, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (14, 7, N'Левашова', N'Злата', N'Ивановна', CAST(N'1959-07-11' AS Date), 20, 1, 7, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (15, 7, N'Мусин', N'Иван', N'Петрович', CAST(N'1976-01-15' AS Date), 21, 2, 7, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (16, 8, N'Иванов', N'Сергей', N'Николаевич', CAST(N'1973-12-18' AS Date), 22, 1, 9, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (17, 8, N'Копейкина', N'Ольга', N'Сергеевна', CAST(N'1988-08-02' AS Date), 23, 2, 9, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (18, 9, N'Иванов', N'Николай', N'Владимирович', CAST(N'1997-06-29' AS Date), 24, 1, 8, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (19, 9, N'Крутов', N'Владимир', N'Анатольевич', CAST(N'1970-06-27' AS Date), 25, 2, 8, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (20, 10, N'Чеботарев', N'Александр', N'Вячеславович', CAST(N'1989-09-16' AS Date), 1, 1, 12, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (21, 10, N'Семенков', N'Сергей', N'Александрович', CAST(N'1961-02-12' AS Date), 2, 2, 12, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (22, 11, N'Рогатин', N'Даниил', N'Петрович', CAST(N'1994-04-30' AS Date), 26, 1, 9, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (24, 12, N'Крутов', N'Виталий', N'Сергеевич', CAST(N'1990-07-15' AS Date), 28, 1, 10, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (25, 12, N'Никуличев', N'Иван', N'Александрович', CAST(N'1959-07-07' AS Date), 29, 2, 10, N'user1')
INSERT [dbo].[Administracia_i_hoz_personal] ([Id_rabotnika], [Doljnost], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Kabinet], [Nomer_stancii], [Nomer_zarplati], [Login]) VALUES (2028, 5, N'Тараторин', N'Александр', N'Сергеевич', CAST(N'2022-03-30' AS Date), 333, 2, 2, N'user1')
SET IDENTITY_INSERT [dbo].[Administracia_i_hoz_personal] OFF
GO
SET IDENTITY_INSERT [dbo].[Dolgnosti] ON 

INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (1, N'Главный врач')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (2, N'Зам. глав. врача по мед. части')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (3, N'Зам. глав. врача по экономическим вопросам')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (4, N'Главная мед. сестра')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (5, N'Экономист')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (6, N'Специалист по персоналу')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (7, N'Секрктарь')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (8, N'Кассир')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (9, N'Программист')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (10, N'Уборщик производственных помещений')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (11, N'Электромантер')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (12, N'Слесарь-сантехник')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (13, N'Гардеробщик')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (14, N'Врач-трансфузиолог')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (15, N'Врач клинической лабораторной диагнозтики')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (16, N'Биолог')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (17, N'Мед. сестра')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (18, N'Фельдшер-лаборант')
INSERT [dbo].[Dolgnosti] ([Id_dolgnosti], [Naimenovanie_dolgnosti]) VALUES (19, N'Лаборант')
SET IDENTITY_INSERT [dbo].[Dolgnosti] OFF
GO
INSERT [dbo].[Krov] ([Id_krovi], [Naimenovanie_krovi], [Nomer_stancii], [Nomer_zayavki]) VALUES (1, N'I положительная', 1, 1)
INSERT [dbo].[Krov] ([Id_krovi], [Naimenovanie_krovi], [Nomer_stancii], [Nomer_zayavki]) VALUES (2, N'I отрицательная', 2, 2)
INSERT [dbo].[Krov] ([Id_krovi], [Naimenovanie_krovi], [Nomer_stancii], [Nomer_zayavki]) VALUES (3, N'II положительная', 1, 3)
INSERT [dbo].[Krov] ([Id_krovi], [Naimenovanie_krovi], [Nomer_stancii], [Nomer_zayavki]) VALUES (4, N'II отрицательная', 2, 4)
INSERT [dbo].[Krov] ([Id_krovi], [Naimenovanie_krovi], [Nomer_stancii], [Nomer_zayavki]) VALUES (5, N'III положительная', 1, 5)
INSERT [dbo].[Krov] ([Id_krovi], [Naimenovanie_krovi], [Nomer_stancii], [Nomer_zayavki]) VALUES (6, N'III отрицательная', 2, 6)
INSERT [dbo].[Krov] ([Id_krovi], [Naimenovanie_krovi], [Nomer_stancii], [Nomer_zayavki]) VALUES (7, N'IV положительная', 1, 7)
INSERT [dbo].[Krov] ([Id_krovi], [Naimenovanie_krovi], [Nomer_stancii], [Nomer_zayavki]) VALUES (8, N'IV отрицательная', 2, 8)
GO
INSERT [dbo].[Role] ([id], [Name]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([id], [Name]) VALUES (2, N'Пользователь')
GO
SET IDENTITY_INSERT [dbo].[Spisok_pacientov] ON 

INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (1, N'Созонов', N'Никита', N'Иванович', CAST(N'1989-04-17' AS Date), 1, N'1111111111111111', N'1111111111', N'11111111111')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (2, N'Трухонин', N'Михаил', N'Евленьевич', CAST(N'1999-06-21' AS Date), 2, N'2222222222222222', N'2222222222', N'22222222222')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (3, N'Финашина', N'Светлана', N'Александровна', CAST(N'1978-06-27' AS Date), 3, N'3333333333333333', N'3333333333', N'33333333333')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (4, N'Федосова', N'Алина', N'Сергеевна', CAST(N'1956-04-08' AS Date), 4, N'4444444444444444', N'4444444444', N'44444444444')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (5, N'Огольцое', N'Егор', N'Николаевич', CAST(N'1988-06-14' AS Date), 5, N'5555555555555555', N'5555555555', N'55555555555')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (7, N'Баушев', N'Кирилл', N'Александрович', CAST(N'1990-01-24' AS Date), 7, N'7777777777777777', N'7777777777', N'77777777777')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (8, N'Крылова', N'Рита', N'Сергеевна', CAST(N'1998-06-29' AS Date), 8, N'8888888888888888', N'8888888888', N'88888888888')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (9, N'Баушева', N'Карина', N'Игоревна', CAST(N'1971-01-31' AS Date), 1, N'9999999999999999', N'9999999999', N'99999999999')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (10, N'Сажин', N'Руслан', N'Александрович', CAST(N'1972-05-26' AS Date), 2, N'1234567890103214', N'1234567843', N'12345678942')
INSERT [dbo].[Spisok_pacientov] ([Id_pacienta], [Familia], [Imya], [Otchestvo], [Data_rojdenia], [Gruppa_krovi], [Med_polis_pacienta], [Pasport_pacienta], [Snils_pacienta]) VALUES (12, N'Белов', N'Радион', N'Николаевич', CAST(N'1987-08-29' AS Date), 4, N'1011034234234523', N'1101110324', N'11011101324')
SET IDENTITY_INSERT [dbo].[Spisok_pacientov] OFF
GO
SET IDENTITY_INSERT [dbo].[Stancia] ON 

INSERT [dbo].[Stancia] ([Nomer_stancii], [Naimenovanie_stancii], [Adres_stancii]) VALUES (1, N'Областная станция переливания крови номер 3', N'Ильюшина 17                                       ')
INSERT [dbo].[Stancia] ([Nomer_stancii], [Naimenovanie_stancii], [Adres_stancii]) VALUES (2, N'Областная станция переливания крови номер 1', N'Пиродково дом 3')
INSERT [dbo].[Stancia] ([Nomer_stancii], [Naimenovanie_stancii], [Adres_stancii]) VALUES (3, N'Областная станция переливания крови номер 2', N'Благовещенская дом 13')
SET IDENTITY_INSERT [dbo].[Stancia] OFF
GO
INSERT [dbo].[Users] ([Login], [Password], [Roled]) VALUES (N'Admin', N'E3AFED0047B08059D0FADA10F400C1E5', 1)
INSERT [dbo].[Users] ([Login], [Password], [Roled]) VALUES (N'user1', N'24C9E15E52AFC47C225B757E7BEE1F9D', 2)
INSERT [dbo].[Users] ([Login], [Password], [Roled]) VALUES (N'user2', N'7E58D63B60197CEB55A1C487989A3720', 2)
GO
SET IDENTITY_INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ON 

INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (1, CAST(N'2021-05-19' AS Date), 5, 1)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (2, CAST(N'2021-06-26' AS Date), 8, 2)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (3, CAST(N'2021-02-17' AS Date), 2, 1)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (4, CAST(N'2021-05-06' AS Date), 3, 2)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (5, CAST(N'2021-02-16' AS Date), 10, 1)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (6, CAST(N'2021-07-23' AS Date), 6, 2)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (7, CAST(N'2021-01-19' AS Date), 7, 1)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (8, CAST(N'2021-06-30' AS Date), 4, 2)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (9, CAST(N'2021-02-16' AS Date), 5, 1)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (10, CAST(N'2021-05-20' AS Date), 6, 2)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (11, CAST(N'2021-04-12' AS Date), 7, 1)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (12, CAST(N'2021-04-25' AS Date), 13, 2)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (13, CAST(N'2021-03-16' AS Date), 12, 1)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (14, CAST(N'2021-10-14' AS Date), 3, 2)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (15, CAST(N'2021-12-15' AS Date), 8, 1)
INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki], [Data], [Kolichestvo], [Nomer_stancii]) VALUES (16, CAST(N'2021-10-05' AS Date), 8, 2)
SET IDENTITY_INSERT [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] OFF
GO
SET IDENTITY_INSERT [dbo].[Zarplata] ON 

INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (1, 240007, 2, 2022)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (2, 13500, 1, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (3, 12500, 2, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (4, 14600, 3, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (5, 18000, 4, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (6, 17900, 5, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (7, 12900, 6, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (8, 15850, 7, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (9, 14350, 8, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (10, 9900, 9, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (11, 17850, 10, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (12, 16700, 11, 2021)
INSERT [dbo].[Zarplata] ([Nomer_zarplati], [Zarplata], [Nomer_meciaca], [God]) VALUES (13, 12350, 12, 2021)
SET IDENTITY_INSERT [dbo].[Zarplata] OFF
GO
SET IDENTITY_INSERT [dbo].[Zarplatniy_period] ON 

INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (1, N'Январь                                            ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (2, N'Февраль                                           ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (3, N'Март                                              ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (4, N'Апрель                                            ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (5, N'Май                                               ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (6, N'Июнь                                              ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (7, N'Июль                                              ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (8, N'Август                                            ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (9, N'Сентябрь                                          ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (10, N'Октябрь                                           ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (11, N'Ноябрь                                            ')
INSERT [dbo].[Zarplatniy_period] ([Nomer_meciaca], [Naimenovanie_meciaca]) VALUES (12, N'Декабрь                                           ')
SET IDENTITY_INSERT [dbo].[Zarplatniy_period] OFF
GO
ALTER TABLE [dbo].[Administracia_i_hoz_personal]  WITH CHECK ADD  CONSTRAINT [FK__Administr__Doljn__398D8EEE] FOREIGN KEY([Doljnost])
REFERENCES [dbo].[Dolgnosti] ([Id_dolgnosti])
GO
ALTER TABLE [dbo].[Administracia_i_hoz_personal] CHECK CONSTRAINT [FK__Administr__Doljn__398D8EEE]
GO
ALTER TABLE [dbo].[Administracia_i_hoz_personal]  WITH CHECK ADD  CONSTRAINT [FK__Administr__Nomer__3B75D760] FOREIGN KEY([Nomer_stancii])
REFERENCES [dbo].[Stancia] ([Nomer_stancii])
GO
ALTER TABLE [dbo].[Administracia_i_hoz_personal] CHECK CONSTRAINT [FK__Administr__Nomer__3B75D760]
GO
ALTER TABLE [dbo].[Administracia_i_hoz_personal]  WITH CHECK ADD  CONSTRAINT [FK__Administr__Nomer__5535A963] FOREIGN KEY([Nomer_zarplati])
REFERENCES [dbo].[Zarplata] ([Nomer_zarplati])
GO
ALTER TABLE [dbo].[Administracia_i_hoz_personal] CHECK CONSTRAINT [FK__Administr__Nomer__5535A963]
GO
ALTER TABLE [dbo].[Administracia_i_hoz_personal]  WITH CHECK ADD  CONSTRAINT [FK_Administracia_i_hoz_personal_Users] FOREIGN KEY([Login])
REFERENCES [dbo].[Users] ([Login])
GO
ALTER TABLE [dbo].[Administracia_i_hoz_personal] CHECK CONSTRAINT [FK_Administracia_i_hoz_personal_Users]
GO
ALTER TABLE [dbo].[Krov]  WITH CHECK ADD  CONSTRAINT [FK__Krov__Nomer_stan__571DF1D5] FOREIGN KEY([Nomer_stancii])
REFERENCES [dbo].[Stancia] ([Nomer_stancii])
GO
ALTER TABLE [dbo].[Krov] CHECK CONSTRAINT [FK__Krov__Nomer_stan__571DF1D5]
GO
ALTER TABLE [dbo].[Krov]  WITH CHECK ADD  CONSTRAINT [FK__Krov__Nomer_zaya__3D5E1FD2] FOREIGN KEY([Nomer_zayavki])
REFERENCES [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] ([Nomer_zayavki])
GO
ALTER TABLE [dbo].[Krov] CHECK CONSTRAINT [FK__Krov__Nomer_zaya__3D5E1FD2]
GO
ALTER TABLE [dbo].[Otdel]  WITH CHECK ADD  CONSTRAINT [FK__Otdel__Stancia__3E52440B] FOREIGN KEY([Stancia])
REFERENCES [dbo].[Stancia] ([Nomer_stancii])
GO
ALTER TABLE [dbo].[Otdel] CHECK CONSTRAINT [FK__Otdel__Stancia__3E52440B]
GO
ALTER TABLE [dbo].[Priem_pacientov]  WITH CHECK ADD  CONSTRAINT [FK__Priem_pac__Id_pa__59FA5E80] FOREIGN KEY([Id_pacienta])
REFERENCES [dbo].[Spisok_pacientov] ([Id_pacienta])
GO
ALTER TABLE [dbo].[Priem_pacientov] CHECK CONSTRAINT [FK__Priem_pac__Id_pa__59FA5E80]
GO
ALTER TABLE [dbo].[Priem_pacientov]  WITH CHECK ADD  CONSTRAINT [FK__Priem_pac__Id_vr__5AEE82B9] FOREIGN KEY([Id_vracha])
REFERENCES [dbo].[Vrachi_i_sredniy_med_personal] ([Id_vracha])
GO
ALTER TABLE [dbo].[Priem_pacientov] CHECK CONSTRAINT [FK__Priem_pac__Id_vr__5AEE82B9]
GO
ALTER TABLE [dbo].[Spisok_pacientov]  WITH CHECK ADD  CONSTRAINT [FK__Spisok_pa__Grupp__5BE2A6F2] FOREIGN KEY([Gruppa_krovi])
REFERENCES [dbo].[Krov] ([Id_krovi])
GO
ALTER TABLE [dbo].[Spisok_pacientov] CHECK CONSTRAINT [FK__Spisok_pa__Grupp__5BE2A6F2]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([Roled])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
ALTER TABLE [dbo].[Uslugi]  WITH CHECK ADD  CONSTRAINT [FK__Uslugi__Id_priem__5CD6CB2B] FOREIGN KEY([Id_priema])
REFERENCES [dbo].[Priem_pacientov] ([Id_priema])
GO
ALTER TABLE [dbo].[Uslugi] CHECK CONSTRAINT [FK__Uslugi__Id_priem__5CD6CB2B]
GO
ALTER TABLE [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti]  WITH CHECK ADD  CONSTRAINT [FK__Vidacha_k__Nomer__4316F928] FOREIGN KEY([Nomer_stancii])
REFERENCES [dbo].[Stancia] ([Nomer_stancii])
GO
ALTER TABLE [dbo].[Vidacha_krovi_v_LPU_goroda_i_oblasti] CHECK CONSTRAINT [FK__Vidacha_k__Nomer__4316F928]
GO
ALTER TABLE [dbo].[Vrachi_i_sredniy_med_personal]  WITH CHECK ADD  CONSTRAINT [FK__Vrachi_i___Dolgn__440B1D61] FOREIGN KEY([Dolgnost])
REFERENCES [dbo].[Dolgnosti] ([Id_dolgnosti])
GO
ALTER TABLE [dbo].[Vrachi_i_sredniy_med_personal] CHECK CONSTRAINT [FK__Vrachi_i___Dolgn__440B1D61]
GO
ALTER TABLE [dbo].[Vrachi_i_sredniy_med_personal]  WITH CHECK ADD  CONSTRAINT [FK__Vrachi_i___Nomer__46E78A0C] FOREIGN KEY([Nomer_otdela])
REFERENCES [dbo].[Otdel] ([Nomer_otdela])
GO
ALTER TABLE [dbo].[Vrachi_i_sredniy_med_personal] CHECK CONSTRAINT [FK__Vrachi_i___Nomer__46E78A0C]
GO
ALTER TABLE [dbo].[Vrachi_i_sredniy_med_personal]  WITH CHECK ADD  CONSTRAINT [FK__Vrachi_i___Nomer__5FB337D6] FOREIGN KEY([Nomer_stancii])
REFERENCES [dbo].[Stancia] ([Nomer_stancii])
GO
ALTER TABLE [dbo].[Vrachi_i_sredniy_med_personal] CHECK CONSTRAINT [FK__Vrachi_i___Nomer__5FB337D6]
GO
ALTER TABLE [dbo].[Vrachi_i_sredniy_med_personal]  WITH CHECK ADD  CONSTRAINT [FK__Vrachi_i___Nomer__60A75C0F] FOREIGN KEY([Nomer_zarplati])
REFERENCES [dbo].[Zarplata] ([Nomer_zarplati])
GO
ALTER TABLE [dbo].[Vrachi_i_sredniy_med_personal] CHECK CONSTRAINT [FK__Vrachi_i___Nomer__60A75C0F]
GO
ALTER TABLE [dbo].[Zarplata]  WITH CHECK ADD  CONSTRAINT [FK__Zarplata__Nomer___47DBAE45] FOREIGN KEY([Nomer_meciaca])
REFERENCES [dbo].[Zarplatniy_period] ([Nomer_meciaca])
GO
ALTER TABLE [dbo].[Zarplata] CHECK CONSTRAINT [FK__Zarplata__Nomer___47DBAE45]
GO
