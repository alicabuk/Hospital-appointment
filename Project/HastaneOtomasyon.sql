USE [master]
GO
/****** Object:  Database [HastaneOtomasyon]    Script Date: 2.05.2020 12:56:23 ******/
CREATE DATABASE [HastaneOtomasyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HastaneOtomasyon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HastaneOtomasyon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HastaneOtomasyon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HastaneOtomasyon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HastaneOtomasyon] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HastaneOtomasyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HastaneOtomasyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HastaneOtomasyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HastaneOtomasyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HastaneOtomasyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HastaneOtomasyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HastaneOtomasyon] SET  MULTI_USER 
GO
ALTER DATABASE [HastaneOtomasyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HastaneOtomasyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HastaneOtomasyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HastaneOtomasyon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HastaneOtomasyon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HastaneOtomasyon] SET QUERY_STORE = OFF
GO
USE [HastaneOtomasyon]
GO
/****** Object:  Table [dbo].[Tbl_Branslar]    Script Date: 2.05.2020 12:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Branslar](
	[Bransid] [smallint] IDENTITY(1,1) NOT NULL,
	[BransAd] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Doktorlar]    Script Date: 2.05.2020 12:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Doktorlar](
	[Doktorid] [smallint] IDENTITY(1,1) NOT NULL,
	[DoktorAd] [varchar](40) NULL,
	[DoktorSoyad] [varchar](30) NULL,
	[DoktorBrans] [varchar](30) NULL,
	[DoktorTC] [char](11) NULL,
	[DoktorSifre] [varchar](20) NULL,
	[DoktorCinsiyet] [varchar](5) NULL,
	[DoktorTelefon] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hastalar]    Script Date: 2.05.2020 12:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hastalar](
	[Hastaid] [smallint] IDENTITY(1,1) NOT NULL,
	[HastaAd] [varchar](40) NULL,
	[HastaSoyad] [varchar](30) NULL,
	[HastaTC] [char](11) NULL,
	[HastaTelefon] [varchar](15) NULL,
	[HastaSifre] [varchar](20) NULL,
	[HastaCinsiyet] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Randevular]    Script Date: 2.05.2020 12:56:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Randevular](
	[Randevuid] [smallint] IDENTITY(1,1) NOT NULL,
	[RandevuTarih] [varchar](12) NULL,
	[RandevuSaat] [varchar](5) NULL,
	[RandevuBrans] [varchar](30) NULL,
	[RandevuDoktor] [varchar](70) NULL,
	[RandevuDurum] [bit] NULL,
	[HastaTC] [char](11) NULL,
	[HastaSikayet] [varchar](400) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] ON 

INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (1, N'İç Hastalıkları')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (2, N'Kardiyoloji')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (3, N'Göğüs Hastalıkları')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (4, N'Enfeksiyon Hastalıkları')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (5, N'Nöroloji')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (6, N'Psikiyatri')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (7, N'Çocuk Sağlığı ve Hastalıkları')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (8, N'Dermatoloji')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (9, N'Fiziksel Tıp ve Rehabilitasyon')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (10, N'Genel Cerrahi')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (11, N'Göğüs Cerrahisi')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (12, N'Kalp ve Damar Cerrahisi')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (13, N'Beyin ve Sinir Cerrahisi')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (14, N'Ortopedi ve Travmatoloji')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (15, N'Üroloji')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (16, N'Kulak-Burun-Boğaz Hastalıkları')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (17, N'Göz Hastalıkları')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (18, N'Kadın Hastalıkları ve Doğum')
INSERT [dbo].[Tbl_Branslar] ([Bransid], [BransAd]) VALUES (19, N'Radyoloji')
SET IDENTITY_INSERT [dbo].[Tbl_Branslar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] ON 

INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (1, N'Efe', N'Tümen', N'İç Hastalıkları', N'22222222222', N'2222', N'BAY', N'(533) 333-3333')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (2, N'Ecem Naz', N'Çabuk', N'Nöroloji', N'33333333333', N'3333', N'BAYAN', N'(522) 222-2222')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (3, N'Yiğit', N'Özmutlu', N'Kardiyoloji', N'44444444444', N'4444', N'BAY', N'(522) 222-2221')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (4, N'Deniz', N'Parlar', N'Göğüs Hastalıkları', N'55555555555', N'5555', N'BAY', N'(522) 222-2223')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (5, N'Gizem', N'Şafak', N'Enfeksiyon Hastalıkları', N'66666666666', N'6666', N'BAYAN', N'(522) 222-2224')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (6, N'Lale', N'Kırmızı', N'Psikiyatri', N'77777777777', N'7777', N'BAYAN', N'(522) 222-2225')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (7, N'Murat', N'Yıldız', N'Çocuk Sağlığı ve Hastalıkları', N'88888888888', N'8888', N'BAY', N'(522) 222-2226')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (8, N'Uğur', N'Uçar', N'Dermatoloji', N'99999999999', N'9999', N'BAY', N'(522) 222-2227')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (9, N'Neriman', N'Yaşar', N'Fiziksel Tıp ve Rehabilitasyon', N'66666666667', N'6667', N'BAYAN', N'(522) 222-2228')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (10, N'Neslihan', N'Bulut', N'Genel Cerrahi', N'66666666677', N'6677', N'BAYAN', N'(522) 222-2229')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (11, N'Berkan', N'Işık', N'Göğüs Cerrahisi', N'66666666777', N'6777', N'BAY', N'(522) 222-2220')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (12, N'Mehmet', N'Özdemir', N'Kalp ve Damar Cerrahisi', N'66666667777', N'7777', N'BAY', N'(522) 222-2212')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (13, N'Funda', N'Kolay', N'Beyin ve Sinir Cerrahisi', N'22222222223', N'2223', N'BAYAN', N'(522) 222-2211')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (14, N'Emine', N'Kılıç', N'Ortopedi ve Travmatoloji', N'22222222233', N'2233', N'BAYAN', N'(522) 222-2210')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (15, N'Burak', N'Kalkan', N'Üroloji', N'22222222333', N'2333', N'BAY', N'(522) 222-2213')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (16, N'Alp', N'Gündoğdu', N'Kulak-Burun-Boğaz Hastalıkları', N'22222223333', N'1234', N'BAY', N'(522) 222-2214')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (17, N'Ayşe', N'Sabah', N'Göz Hastalıkları', N'22222233333', N'1234', N'BAYAN', N'(522) 222-2215')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (18, N'Fatma', N'Yas', N'Kadın Hastalıkları ve Doğum', N'55555555556', N'5556', N'BAYAN', N'(522) 222-2216')
INSERT [dbo].[Tbl_Doktorlar] ([Doktorid], [DoktorAd], [DoktorSoyad], [DoktorBrans], [DoktorTC], [DoktorSifre], [DoktorCinsiyet], [DoktorTelefon]) VALUES (19, N'Mustafa', N'Garip', N'Radyoloji', N'55555555566', N'5566', N'BAY', N'(522) 222-2217')
SET IDENTITY_INSERT [dbo].[Tbl_Doktorlar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] ON 

INSERT [dbo].[Tbl_Hastalar] ([Hastaid], [HastaAd], [HastaSoyad], [HastaTC], [HastaTelefon], [HastaSifre], [HastaCinsiyet]) VALUES (1, N'Ali', N'Çabuk', N'11111111111', N'(555) 555-5554', N'1111', N'BAY')
SET IDENTITY_INSERT [dbo].[Tbl_Hastalar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Randevular] ON 

INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (1, N'09.05.2020', N'08:00', N'İç Hastalıkları', N'Efe Tümen', 1, N'11111111111', N'Psikolojim bozuldu.')
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (2, N'09.05.2020', N'08:30', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (3, N'09.05.2020', N'09:00', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (4, N'09.05.2020', N'09:30', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (34, N'09.05.2020', N'08:30', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (35, N'09.05.2020', N'09:00', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (36, N'09.05.2020', N'09:30', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (37, N'09.05.2020', N'10:00', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (38, N'09.05.2020', N'10:30', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (39, N'09.05.2020', N'11:00', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (40, N'09.05.2020', N'11:30', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (41, N'09.05.2020', N'13:00', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (42, N'09.05.2020', N'13:30', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (43, N'09.05.2020', N'14:00', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (44, N'09.05.2020', N'14:30', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (45, N'09.05.2020', N'15:00', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (46, N'09.05.2020', N'16:00', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (47, N'09.05.2020', N'16:30', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (48, N'09.05.2020', N'08:00', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (49, N'09.05.2020', N'08:30', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (50, N'09.05.2020', N'09:00', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (51, N'09.05.2020', N'09:30', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (52, N'09.05.2020', N'10:00', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (53, N'09.05.2020', N'10:30', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (54, N'09.05.2020', N'11:00', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (55, N'09.05.2020', N'11:30', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (56, N'09.05.2020', N'13:00', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (57, N'09.05.2020', N'13:30', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (58, N'09.05.2020', N'14:00', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (59, N'09.05.2020', N'14:30', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (60, N'09.05.2020', N'15:00', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (61, N'09.05.2020', N'15:30', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (62, N'09.05.2020', N'16:00', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (63, N'09.05.2020', N'16:30', N'Göğüs Hastalıkları', N'Deniz Parlar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (64, N'09.05.2020', N'08:00', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (66, N'09.05.2020', N'08:30', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (67, N'09.05.2020', N'09:00', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (68, N'09.05.2020', N'09:30', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (69, N'09.05.2020', N'10:00', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (70, N'09.05.2020', N'10:30', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (71, N'09.05.2020', N'11:00', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (72, N'09.05.2020', N'11:30', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (73, N'09.05.2020', N'13:00', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (74, N'09.05.2020', N'13:30', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (75, N'09.05.2020', N'14:00', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (76, N'09.05.2020', N'14:30', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (77, N'09.05.2020', N'15:00', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (78, N'09.05.2020', N'15:30', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (79, N'09.05.2020', N'16:00', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (80, N'09.05.2020', N'16:30', N'Enfeksiyon Hastalıkları', N'Gizem Şafak', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (81, N'09.05.2020', N'08:00', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (82, N'09.05.2020', N'08:30', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (83, N'09.05.2020', N'09:00', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (84, N'09.05.2020', N'09:30', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (85, N'09.05.2020', N'10:00', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (86, N'09.05.2020', N'10:30', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (87, N'09.05.2020', N'11:00', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (88, N'09.05.2020', N'11:30', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (89, N'09.05.2020', N'13:00', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (90, N'09.05.2020', N'13:30', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (91, N'09.05.2020', N'14:00', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (92, N'09.05.2020', N'14:30', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (93, N'09.05.2020', N'15:00', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (94, N'09.05.2020', N'15:30', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (95, N'09.05.2020', N'16:00', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (96, N'09.05.2020', N'16:30', N'Psikiyatri', N'Lale Kırmızı', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (97, N'09.05.2020', N'08:00', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (98, N'09.05.2020', N'08:30', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (99, N'09.05.2020', N'09:00', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (100, N'09.05.2020', N'09:30', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (101, N'09.05.2020', N'10:00', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (102, N'09.05.2020', N'10:30', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (103, N'09.05.2020', N'11:00', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (104, N'09.05.2020', N'11:30', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (105, N'09.05.2020', N'13:00', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (106, N'09.05.2020', N'13:30', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (107, N'09.05.2020', N'14:00', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (108, N'09.05.2020', N'14:30', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (109, N'09.05.2020', N'15:00', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (110, N'09.05.2020', N'15:30', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (111, N'09.05.2020', N'16:00', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (112, N'09.05.2020', N'16:30', N'Çocuk Sağlığı ve Hastalıkları', N'Murat Yıldız', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (113, N'09.05.2020', N'08:00', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (114, N'09.05.2020', N'08:30', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (115, N'09.05.2020', N'09:00', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (116, N'09.05.2020', N'09:30', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (117, N'09.05.2020', N'10:00', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (118, N'09.05.2020', N'10:30', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (119, N'09.05.2020', N'11:00', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (120, N'09.05.2020', N'11:30', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (121, N'09.05.2020', N'13:00', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (122, N'09.05.2020', N'13:30', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (123, N'09.05.2020', N'14:00', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (124, N'09.05.2020', N'14:30', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (125, N'09.05.2020', N'15:00', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (126, N'09.05.2020', N'15:30', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (127, N'09.05.2020', N'16:00', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (128, N'09.05.2020', N'16:30', N'Dermatoloji', N'Uğur Uçar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (129, N'09.05.2020', N'08:00', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
GO
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (130, N'09.05.2020', N'08:30', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (131, N'09.05.2020', N'09:00', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (5, N'09.05.2020', N'10:00', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (6, N'09.05.2020', N'10:30', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (7, N'09.05.2020', N'11:00', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (8, N'09.05.2020', N'11:30', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (9, N'09.05.2020', N'13:00', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (10, N'09.05.2020', N'13:30', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (11, N'09.05.2020', N'14:00', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (12, N'09.05.2020', N'14:30', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (13, N'09.05.2020', N'15:00', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (14, N'09.05.2020', N'15:30', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (15, N'09.05.2020', N'16:00', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (16, N'09.05.2020', N'16:30', N'İç Hastalıkları', N'Efe Tümen', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (17, N'09.05.2020', N'08:00', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (18, N'09.05.2020', N'08:30', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (19, N'09.05.2020', N'09:00', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (20, N'09.05.2020', N'09:30', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (21, N'09.05.2020', N'10:00', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (22, N'09.05.2020', N'10:30', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (23, N'09.05.2020', N'11:00', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (24, N'09.05.2020', N'11:30', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (25, N'09.05.2020', N'13:00', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (26, N'09.05.2020', N'13:30', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (27, N'09.05.2020', N'14:00', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (28, N'09.05.2020', N'14:30', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (29, N'09.05.2020', N'15:00', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (30, N'09.05.2020', N'15:30', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (31, N'09.05.2020', N'16:00', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (32, N'09.05.2020', N'16:30', N'Nöroloji', N'Ecem Naz Çabuk', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (33, N'09.05.2020', N'08:00', N'Kardiyoloji', N'Yiğit Özmutlu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (132, N'09.05.2020', N'09:30', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (133, N'09.05.2020', N'10:00', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (134, N'09.05.2020', N'10:30', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (135, N'09.05.2020', N'11:00', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (136, N'09.05.2020', N'11:30', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (137, N'09.05.2020', N'13:00', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (138, N'09.05.2020', N'13:30', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (139, N'09.05.2020', N'14:00', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (140, N'09.05.2020', N'14:30', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (141, N'09.05.2020', N'15:00', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (142, N'09.05.2020', N'15:30', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (143, N'09.05.2020', N'16:00', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (144, N'09.05.2020', N'16:30', N'Fiziksel Tıp ve Rehabilitasyon', N'Neriman Yaşar', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (145, N'09.05.2020', N'08:00', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (146, N'09.05.2020', N'08:30', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (147, N'09.05.2020', N'09:00', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (148, N'09.05.2020', N'09:30', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (149, N'09.05.2020', N'10:00', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (150, N'09.05.2020', N'10:30', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (151, N'09.05.2020', N'11:00', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (152, N'09.05.2020', N'11:30', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (153, N'09.05.2020', N'13:00', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (154, N'09.05.2020', N'13:30', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (155, N'09.05.2020', N'14:00', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (156, N'09.05.2020', N'14:30', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (157, N'09.05.2020', N'15:00', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (158, N'09.05.2020', N'15:30', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (159, N'09.05.2020', N'16:00', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (160, N'09.05.2020', N'16:30', N'Genel Cerrahi', N'Neslihan Bulut', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (161, N'09.05.2020', N'08:00', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (162, N'09.05.2020', N'08:30', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (163, N'09.05.2020', N'09:00', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (164, N'09.05.2020', N'09:30', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (165, N'09.05.2020', N'10:00', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (166, N'09.05.2020', N'10:30', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (167, N'09.05.2020', N'11:00', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (168, N'09.05.2020', N'11:30', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (169, N'09.05.2020', N'13:00', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (170, N'09.05.2020', N'13:30', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (171, N'09.05.2020', N'14:00', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (172, N'09.05.2020', N'14:30', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (173, N'09.05.2020', N'15:00', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (174, N'09.05.2020', N'15:30', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (175, N'09.05.2020', N'16:00', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (176, N'09.05.2020', N'16:30', N'Göğüs Cerrahisi', N'Berkan Işık', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (177, N'09.05.2020', N'08:00', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (178, N'09.05.2020', N'08:30', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (179, N'09.05.2020', N'09:00', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (180, N'09.05.2020', N'09:30', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (181, N'09.05.2020', N'10:00', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (182, N'09.05.2020', N'10:30', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (183, N'09.05.2020', N'11:00', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (184, N'09.05.2020', N'11:30', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (185, N'09.05.2020', N'13:00', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (186, N'09.05.2020', N'13:30', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (187, N'09.05.2020', N'14:00', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (188, N'09.05.2020', N'14:30', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (189, N'09.05.2020', N'15:00', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (190, N'09.05.2020', N'15:30', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (191, N'09.05.2020', N'16:00', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (192, N'09.05.2020', N'16:30', N'Kalp ve Damar Cerrahisi', N'Mehmet Özdemir', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (193, N'09.05.2020', N'08:00', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (194, N'09.05.2020', N'08:30', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (195, N'09.05.2020', N'09:00', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (196, N'09.05.2020', N'09:30', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (197, N'09.05.2020', N'10:00', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (198, N'09.05.2020', N'10:30', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (199, N'09.05.2020', N'11:00', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (200, N'09.05.2020', N'11:30', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
GO
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (201, N'09.05.2020', N'13:00', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (202, N'09.05.2020', N'13:30', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (203, N'09.05.2020', N'14:00', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (204, N'09.05.2020', N'14:30', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (205, N'09.05.2020', N'15:00', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (206, N'09.05.2020', N'15:30', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (207, N'09.05.2020', N'16:00', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (208, N'09.05.2020', N'16:30', N'Beyin ve Sinir Cerrahisi', N'Funda Kolay', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (209, N'09.05.2020', N'08:00', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (210, N'09.05.2020', N'08:30', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (211, N'09.05.2020', N'09:00', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (212, N'09.05.2020', N'09:30', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (213, N'09.05.2020', N'10:00', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (214, N'09.05.2020', N'10:30', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (215, N'09.05.2020', N'11:00', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (216, N'09.05.2020', N'11:30', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (217, N'09.05.2020', N'13:00', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (218, N'09.05.2020', N'13:30', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (219, N'09.05.2020', N'14:00', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (220, N'09.05.2020', N'14:30', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (221, N'09.05.2020', N'15:00', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (222, N'09.05.2020', N'15:30', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (223, N'09.05.2020', N'16:00', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (224, N'09.05.2020', N'16:30', N'Ortopedi ve Travmatoloji', N'Emine Kılıç', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (225, N'09.05.2020', N'08:00', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (226, N'09.05.2020', N'08:30', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (227, N'09.05.2020', N'09:00', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (228, N'09.05.2020', N'09:30', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (229, N'09.05.2020', N'10:00', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (230, N'09.05.2020', N'10:30', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (231, N'09.05.2020', N'11:00', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (232, N'09.05.2020', N'11:30', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (233, N'09.05.2020', N'13:00', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (234, N'09.05.2020', N'13:30', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (235, N'09.05.2020', N'14:00', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (236, N'09.05.2020', N'14:30', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (237, N'09.05.2020', N'15:00', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (238, N'09.05.2020', N'15:30', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (239, N'09.05.2020', N'16:00', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (240, N'09.05.2020', N'16:30', N'Üroloji', N'Burak Kalkan', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (241, N'09.05.2020', N'08:00', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (242, N'09.05.2020', N'08:30', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (243, N'09.05.2020', N'09:00', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (244, N'09.05.2020', N'09:30', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (245, N'09.05.2020', N'10:00', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (246, N'09.05.2020', N'10:30', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (247, N'09.05.2020', N'11:00', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (248, N'09.05.2020', N'11:30', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (249, N'09.05.2020', N'13:00', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (250, N'09.05.2020', N'13:30', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (251, N'09.05.2020', N'14:00', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (252, N'09.05.2020', N'14:30', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (253, N'09.05.2020', N'15:00', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (254, N'09.05.2020', N'15:30', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (255, N'09.05.2020', N'16:00', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (256, N'09.05.2020', N'16:30', N'Kulak-Burun-Boğaz Hastalıkları', N'Alp Gündoğdu', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (257, N'09.05.2020', N'08:00', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (258, N'09.05.2020', N'08:30', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (259, N'09.05.2020', N'09:00', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (260, N'09.05.2020', N'09:30', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (261, N'09.05.2020', N'10:00', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (262, N'09.05.2020', N'10:30', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (263, N'09.05.2020', N'11:00', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (264, N'09.05.2020', N'11:30', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (265, N'09.05.2020', N'13:00', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (266, N'09.05.2020', N'13:30', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (267, N'09.05.2020', N'14:00', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (268, N'09.05.2020', N'14:30', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (269, N'09.05.2020', N'15:00', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (270, N'09.05.2020', N'15:30', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (271, N'09.05.2020', N'16:00', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (272, N'09.05.2020', N'16:30', N'Göz Hastalıkları', N'Ayşe Sabah', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (273, N'09.05.2020', N'08:00', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (274, N'09.05.2020', N'08:30', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (275, N'09.05.2020', N'09:00', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (276, N'09.05.2020', N'09:30', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (277, N'09.05.2020', N'10:00', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (278, N'09.05.2020', N'10:30', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (279, N'09.05.2020', N'11:00', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (280, N'09.05.2020', N'11:30', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (281, N'09.05.2020', N'13:00', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (282, N'09.05.2020', N'13:30', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (283, N'09.05.2020', N'14:00', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (284, N'09.05.2020', N'14:30', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (285, N'09.05.2020', N'15:00', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (286, N'09.05.2020', N'15:30', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (287, N'09.05.2020', N'16:00', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (288, N'09.05.2020', N'16:30', N'Kadın Hastalıkları ve Doğum', N'Fatma Yas', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (289, N'09.05.2020', N'08:00', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (290, N'09.05.2020', N'08:30', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (291, N'09.05.2020', N'09:00', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (292, N'09.05.2020', N'09:30', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (293, N'09.05.2020', N'10:00', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (294, N'09.05.2020', N'10:30', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (295, N'09.05.2020', N'11:00', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (296, N'09.05.2020', N'11:30', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (297, N'09.05.2020', N'13:00', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (298, N'09.05.2020', N'13:30', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (299, N'09.05.2020', N'14:00', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (300, N'09.05.2020', N'14:30', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
GO
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (301, N'09.05.2020', N'15:00', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (302, N'09.05.2020', N'15:30', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (303, N'09.05.2020', N'16:00', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
INSERT [dbo].[Tbl_Randevular] ([Randevuid], [RandevuTarih], [RandevuSaat], [RandevuBrans], [RandevuDoktor], [RandevuDurum], [HastaTC], [HastaSikayet]) VALUES (304, N'09.05.2020', N'16:30', N'Radyoloji', N'Mustafa Garip', 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Randevular] OFF
ALTER TABLE [dbo].[Tbl_Randevular] ADD  CONSTRAINT [DF_Tbl_Randevular_RandevuDurum]  DEFAULT ((0)) FOR [RandevuDurum]
GO
USE [master]
GO
ALTER DATABASE [HastaneOtomasyon] SET  READ_WRITE 
GO
