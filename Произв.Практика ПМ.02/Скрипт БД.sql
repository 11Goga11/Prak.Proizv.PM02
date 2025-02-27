USE [Грузоперевозки]
GO
/****** Object:  Table [dbo].[Водители]    Script Date: 01.07.2024 21:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Водители](
	[ID_Водителя] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[Номер_водительского_удостоверения] [nvarchar](50) NOT NULL,
	[Стаж_водителя] [nvarchar](50) NOT NULL,
	[Транспортное_средство] [nvarchar](50) NOT NULL,
	[Номер_Т.С] [nvarchar](50) NOT NULL,
	[ID_Личных_данных_водителя] [int] NOT NULL,
 CONSTRAINT [PK_Водители] PRIMARY KEY CLUSTERED 
(
	[ID_Водителя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Грузоперевозки]    Script Date: 01.07.2024 21:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Грузоперевозки](
	[ID_Грузоперевозки] [int] NOT NULL,
	[Номер] [nvarchar](50) NOT NULL,
	[Дата] [date] NOT NULL,
	[ID_Клиента] [int] NOT NULL,
	[ID_Водителя] [int] NOT NULL,
	[Город_отправления] [nvarchar](50) NOT NULL,
	[Город_назначения] [nvarchar](50) NOT NULL,
	[Стоимость] [nvarchar](50) NOT NULL,
	[Ед.изм] [nvarchar](50) NOT NULL,
	[Номеклатура] [int] NOT NULL,
 CONSTRAINT [PK_Грузоперевозки] PRIMARY KEY CLUSTERED 
(
	[ID_Грузоперевозки] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 01.07.2024 21:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[ID_Клиента] [int] NOT NULL,
	[Фамилия] [nvarchar](50) NOT NULL,
	[Имя] [nvarchar](50) NOT NULL,
	[Отчество] [nvarchar](50) NOT NULL,
	[Телефон] [nvarchar](50) NOT NULL,
	[Адрес] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[ID_Личных_данных_клиента] [int] NOT NULL,
 CONSTRAINT [PK_Клиенты] PRIMARY KEY CLUSTERED 
(
	[ID_Клиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Личные данные водителя]    Script Date: 01.07.2024 21:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Личные данные водителя](
	[ID_Личных_данных_водителя] [int] NOT NULL,
	[Логин] [nvarchar](50) NOT NULL,
	[Пароль] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Личные данные водителя] PRIMARY KEY CLUSTERED 
(
	[ID_Личных_данных_водителя] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Личные данные клиента]    Script Date: 01.07.2024 21:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Личные данные клиента](
	[ID_Личных_данных_клиента] [int] NOT NULL,
	[Логин] [nvarchar](50) NOT NULL,
	[Пароль] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Личные данные клиента] PRIMARY KEY CLUSTERED 
(
	[ID_Личных_данных_клиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Номенклатура]    Script Date: 01.07.2024 21:52:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Номенклатура](
	[Номер_номенклатура] [int] NOT NULL,
	[Название] [nvarchar](50) NOT NULL,
	[Количество] [nvarchar](50) NOT NULL,
	[Единицы_измерения] [nvarchar](50) NOT NULL,
	[Дата] [date] NOT NULL,
 CONSTRAINT [PK_Номенклатура] PRIMARY KEY CLUSTERED 
(
	[Номер_номенклатура] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Водители] ([ID_Водителя], [Фамилия], [Имя], [Отчество], [Номер_водительского_удостоверения], [Стаж_водителя], [Транспортное_средство], [Номер_Т.С], [ID_Личных_данных_водителя]) VALUES (1, N'Рожкин', N'Василий', N'Михайлович', N'89192244334', N'8 Лет', N'Газель Next', N'О123ОО43', 1)
INSERT [dbo].[Водители] ([ID_Водителя], [Фамилия], [Имя], [Отчество], [Номер_водительского_удостоверения], [Стаж_водителя], [Транспортное_средство], [Номер_Т.С], [ID_Личных_данных_водителя]) VALUES (2, N'Дивный', N'Юрий', N'Петрович', N'89123467834', N'7 Лет', N'Газель Next', N'Р365РР43', 2)
INSERT [dbo].[Водители] ([ID_Водителя], [Фамилия], [Имя], [Отчество], [Номер_водительского_удостоверения], [Стаж_водителя], [Транспортное_средство], [Номер_Т.С], [ID_Личных_данных_водителя]) VALUES (3, N'Миронов', N'Константин', N'Олегович', N'89134561276', N'5 Лет', N'SCANIA', N'Н545ОО43', 3)
INSERT [dbo].[Водители] ([ID_Водителя], [Фамилия], [Имя], [Отчество], [Номер_водительского_удостоверения], [Стаж_водителя], [Транспортное_средство], [Номер_Т.С], [ID_Личных_данных_водителя]) VALUES (4, N'Сергеев', N'Владимир', N'Дмитриевич', N'89127658712', N'5 Лет', N'VOLVO', N'В555СС43', 4)
INSERT [dbo].[Водители] ([ID_Водителя], [Фамилия], [Имя], [Отчество], [Номер_водительского_удостоверения], [Стаж_водителя], [Транспортное_средство], [Номер_Т.С], [ID_Личных_данных_водителя]) VALUES (5, N'Васильевых', N'Дмитрий', N'Сергеевич', N'89127568712', N'10 Лет', N'Газель NEXT', N'Н678НН43', 5)
GO
INSERT [dbo].[Грузоперевозки] ([ID_Грузоперевозки], [Номер], [Дата], [ID_Клиента], [ID_Водителя], [Город_отправления], [Город_назначения], [Стоимость], [Ед.изм], [Номеклатура]) VALUES (1, N'1', CAST(N'2024-07-02' AS Date), 1, 1, N'Слободской', N'Владивосток', N'45.000 рублей', N'120кг', 1)
INSERT [dbo].[Грузоперевозки] ([ID_Грузоперевозки], [Номер], [Дата], [ID_Клиента], [ID_Водителя], [Город_отправления], [Город_назначения], [Стоимость], [Ед.изм], [Номеклатура]) VALUES (2, N'2', CAST(N'2024-07-11' AS Date), 2, 2, N'Слободской', N'Москва', N'100.000 рублей', N'140кг', 2)
INSERT [dbo].[Грузоперевозки] ([ID_Грузоперевозки], [Номер], [Дата], [ID_Клиента], [ID_Водителя], [Город_отправления], [Город_назначения], [Стоимость], [Ед.изм], [Номеклатура]) VALUES (3, N'3', CAST(N'2024-07-05' AS Date), 3, 3, N'Слободской', N'Санкт-Петербург', N'140.000 рублей', N'200кг', 3)
INSERT [dbo].[Грузоперевозки] ([ID_Грузоперевозки], [Номер], [Дата], [ID_Клиента], [ID_Водителя], [Город_отправления], [Город_назначения], [Стоимость], [Ед.изм], [Номеклатура]) VALUES (4, N'4', CAST(N'2024-07-07' AS Date), 4, 4, N'Слободской', N'Новосибирск', N'67.000 рублей', N'100кг', 4)
INSERT [dbo].[Грузоперевозки] ([ID_Грузоперевозки], [Номер], [Дата], [ID_Клиента], [ID_Водителя], [Город_отправления], [Город_назначения], [Стоимость], [Ед.изм], [Номеклатура]) VALUES (5, N'5', CAST(N'2024-07-03' AS Date), 5, 5, N'Слободской', N'Екатеринбург', N'55.000 рублей', N'100кг', 5)
GO
INSERT [dbo].[Клиенты] ([ID_Клиента], [Фамилия], [Имя], [Отчество], [Телефон], [Адрес], [Email], [ID_Личных_данных_клиента]) VALUES (1, N'Кочкин', N'Юрий', N'Михайлович', N'89124325423', N'ул. Свободы, д. 34, кв. 75, г. Владивосток', N'Kochkin@mail.ru', 1)
INSERT [dbo].[Клиенты] ([ID_Клиента], [Фамилия], [Имя], [Отчество], [Телефон], [Адрес], [Email], [ID_Личных_данных_клиента]) VALUES (2, N'Коробкин', N'Олег', N'Юрьевич', N'89214356452', N'ул. Ленина, д. 1, кв. 45, г. Москва', N'Korobkin@mail.ru', 2)
INSERT [dbo].[Клиенты] ([ID_Клиента], [Фамилия], [Имя], [Отчество], [Телефон], [Адрес], [Email], [ID_Личных_данных_клиента]) VALUES (3, N'Кошкин', N'Михаил', N'Петрович', N'89124567812', N'пер. Школьный, д. 3, кв. 78, г. Санкт-Петербург', N'Koskin@mail.ru', 3)
INSERT [dbo].[Клиенты] ([ID_Клиента], [Фамилия], [Имя], [Отчество], [Телефон], [Адрес], [Email], [ID_Личных_данных_клиента]) VALUES (4, N'Мышкин', N'Олег', N'Васильевич', N'89124561234', N'пр-т Победы, д. 98, кв. 12, г. Новосибирск', N'Miskin@mail.ru', 4)
INSERT [dbo].[Клиенты] ([ID_Клиента], [Фамилия], [Имя], [Отчество], [Телефон], [Адрес], [Email], [ID_Личных_данных_клиента]) VALUES (5, N'Русских', N'Артем', N'Сергеевич', N'89126423265', N'ул. Пушкина, д. 21, кв. 56, г. Екатеринбург', N'Russkih@mail.ru', 5)
GO
INSERT [dbo].[Личные данные водителя] ([ID_Личных_данных_водителя], [Логин], [Пароль]) VALUES (1, N'Log6', N'Pas6')
INSERT [dbo].[Личные данные водителя] ([ID_Личных_данных_водителя], [Логин], [Пароль]) VALUES (2, N'Log7', N'Pas7')
INSERT [dbo].[Личные данные водителя] ([ID_Личных_данных_водителя], [Логин], [Пароль]) VALUES (3, N'Log8', N'Pas8')
INSERT [dbo].[Личные данные водителя] ([ID_Личных_данных_водителя], [Логин], [Пароль]) VALUES (4, N'Log9', N'Pas9')
INSERT [dbo].[Личные данные водителя] ([ID_Личных_данных_водителя], [Логин], [Пароль]) VALUES (5, N'Log10', N'Pas10')
GO
INSERT [dbo].[Личные данные клиента] ([ID_Личных_данных_клиента], [Логин], [Пароль]) VALUES (1, N'Log1', N'Pas1')
INSERT [dbo].[Личные данные клиента] ([ID_Личных_данных_клиента], [Логин], [Пароль]) VALUES (2, N'Log2', N'Pas2')
INSERT [dbo].[Личные данные клиента] ([ID_Личных_данных_клиента], [Логин], [Пароль]) VALUES (3, N'Log3', N'Pas3')
INSERT [dbo].[Личные данные клиента] ([ID_Личных_данных_клиента], [Логин], [Пароль]) VALUES (4, N'Log4', N'Pas4')
INSERT [dbo].[Личные данные клиента] ([ID_Личных_данных_клиента], [Логин], [Пароль]) VALUES (5, N'Log5', N'Pas5')
GO
INSERT [dbo].[Номенклатура] ([Номер_номенклатура], [Название], [Количество], [Единицы_измерения], [Дата]) VALUES (1, N'Шкаф', N'1', N'120кг', CAST(N'2024-07-02' AS Date))
INSERT [dbo].[Номенклатура] ([Номер_номенклатура], [Название], [Количество], [Единицы_измерения], [Дата]) VALUES (2, N'Стенка прихожая', N'1', N'140кг', CAST(N'2024-07-11' AS Date))
INSERT [dbo].[Номенклатура] ([Номер_номенклатура], [Название], [Количество], [Единицы_измерения], [Дата]) VALUES (3, N'Кухонный гарнитур', N'5', N'200кг', CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Номенклатура] ([Номер_номенклатура], [Название], [Количество], [Единицы_измерения], [Дата]) VALUES (4, N'Шкаф', N'1', N'100кг', CAST(N'2024-07-07' AS Date))
INSERT [dbo].[Номенклатура] ([Номер_номенклатура], [Название], [Количество], [Единицы_измерения], [Дата]) VALUES (5, N'Диван', N'1', N'100кг', CAST(N'2024-07-03' AS Date))
GO
ALTER TABLE [dbo].[Водители]  WITH CHECK ADD  CONSTRAINT [FK_Водители_Личные данные водителя] FOREIGN KEY([ID_Личных_данных_водителя])
REFERENCES [dbo].[Личные данные водителя] ([ID_Личных_данных_водителя])
GO
ALTER TABLE [dbo].[Водители] CHECK CONSTRAINT [FK_Водители_Личные данные водителя]
GO
ALTER TABLE [dbo].[Грузоперевозки]  WITH CHECK ADD  CONSTRAINT [FK_Грузоперевозки_Водители] FOREIGN KEY([ID_Водителя])
REFERENCES [dbo].[Водители] ([ID_Водителя])
GO
ALTER TABLE [dbo].[Грузоперевозки] CHECK CONSTRAINT [FK_Грузоперевозки_Водители]
GO
ALTER TABLE [dbo].[Грузоперевозки]  WITH CHECK ADD  CONSTRAINT [FK_Грузоперевозки_Клиенты] FOREIGN KEY([ID_Клиента])
REFERENCES [dbo].[Клиенты] ([ID_Клиента])
GO
ALTER TABLE [dbo].[Грузоперевозки] CHECK CONSTRAINT [FK_Грузоперевозки_Клиенты]
GO
ALTER TABLE [dbo].[Грузоперевозки]  WITH CHECK ADD  CONSTRAINT [FK_Грузоперевозки_Номенклатура] FOREIGN KEY([Номеклатура])
REFERENCES [dbo].[Номенклатура] ([Номер_номенклатура])
GO
ALTER TABLE [dbo].[Грузоперевозки] CHECK CONSTRAINT [FK_Грузоперевозки_Номенклатура]
GO
ALTER TABLE [dbo].[Клиенты]  WITH CHECK ADD  CONSTRAINT [FK_Клиенты_Личные данные клиента] FOREIGN KEY([ID_Личных_данных_клиента])
REFERENCES [dbo].[Личные данные клиента] ([ID_Личных_данных_клиента])
GO
ALTER TABLE [dbo].[Клиенты] CHECK CONSTRAINT [FK_Клиенты_Личные данные клиента]
GO
