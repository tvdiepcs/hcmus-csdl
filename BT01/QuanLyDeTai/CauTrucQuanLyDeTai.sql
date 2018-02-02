USE [master]
GO
/****** Object:  Database [QuanLyDeTai]    Script Date: 10/02/2017 10:38:35 ******/
CREATE DATABASE [QuanLyDeTai] ON  PRIMARY 
( NAME = N'QuanLyDeTai', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyDeTai.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyDeTai_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\QuanLyDeTai_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyDeTai] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyDeTai].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyDeTai] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyDeTai] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyDeTai] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyDeTai] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyDeTai] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyDeTai] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QuanLyDeTai] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyDeTai] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyDeTai] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyDeTai] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyDeTai] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyDeTai] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyDeTai] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyDeTai] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyDeTai] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyDeTai] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyDeTai] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyDeTai] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyDeTai] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyDeTai] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyDeTai] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyDeTai] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyDeTai] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyDeTai] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyDeTai] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyDeTai] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyDeTai] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyDeTai] SET DB_CHAINING OFF
GO
USE [QuanLyDeTai]
GO
/****** Object:  Table [dbo].[NGUOITHAN]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NGUOITHAN](
	[MAGV] [varchar](3) NOT NULL,
	[TEN] [nvarchar](20) NOT NULL,
	[NGSINH] [date] NULL,
	[PHAI] [nchar](3) NULL,
 CONSTRAINT [PK_NGUOITHAN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC,
	[TEN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHOA](
	[MAKHOA] [nvarchar](4) NOT NULL,
	[TENKHOA] [nvarchar](30) NULL,
	[NAMTL] [int] NULL,
	[PHONG] [char](3) NULL,
	[DIENTHOAI] [varchar](12) NULL,
	[TRUONGKHOA] [varchar](3) NULL,
	[NGAYNHANCHUC] [date] NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[MAKHOA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GV_DT]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GV_DT](
	[MAGV] [varchar](3) NOT NULL,
	[DIENTHOAI] [varchar](12) NOT NULL,
 CONSTRAINT [PK_GV_DT] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC,
	[DIENTHOAI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BOMON]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BOMON](
	[MABM] [nchar](4) NOT NULL,
	[TENBM] [nvarchar](50) NULL,
	[PHONG] [char](3) NULL,
	[DIENTHOAI] [varchar](12) NULL,
	[TRUONGBM] [varchar](3) NULL,
	[MAKHOA] [nvarchar](4) NULL,
	[NGAYNHANCHUC] [date] NULL,
 CONSTRAINT [PK_BOMON] PRIMARY KEY CLUSTERED 
(
	[MABM] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GIAOVIEN](
	[MAGV] [varchar](3) NOT NULL,
	[HOTEN] [nvarchar](30) NULL,
	[LUONG] [decimal](18, 1) NULL,
	[PHAI] [nchar](3) NULL,
	[NGSINH] [date] NULL,
	[DIACHI] [nvarchar](50) NULL,
	[GVQLCM] [varchar](3) NULL,
	[MABM] [nchar](4) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[THAMGIADT]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[THAMGIADT](
	[MAGV] [varchar](3) NOT NULL,
	[MADT] [varchar](3) NOT NULL,
	[STT] [int] NOT NULL,
	[PHUCAP] [decimal](18, 1) NULL,
	[KETQUA] [nvarchar](3) NULL,
 CONSTRAINT [PK_THAMGIADT] PRIMARY KEY CLUSTERED 
(
	[MAGV] ASC,
	[MADT] ASC,
	[STT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONGVIEC]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONGVIEC](
	[MADT] [varchar](3) NOT NULL,
	[SOTT] [int] NOT NULL,
	[TENCV] [nvarchar](50) NULL,
	[NGAYBD] [date] NULL,
	[NGAYKT] [date] NULL,
 CONSTRAINT [PK_CONGVIEC] PRIMARY KEY CLUSTERED 
(
	[MADT] ASC,
	[SOTT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETAI]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETAI](
	[MADT] [varchar](3) NOT NULL,
	[TENDT] [nvarchar](50) NULL,
	[CAPQL] [nvarchar](20) NULL,
	[KINHPHI] [decimal](18, 1) NULL,
	[NGAYBD] [date] NULL,
	[NGAYKT] [date] NULL,
	[MACD] [nchar](4) NULL,
	[GVCNDT] [varchar](3) NULL,
 CONSTRAINT [PK_DETAI] PRIMARY KEY CLUSTERED 
(
	[MADT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 10/02/2017 10:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MACD] [nchar](4) NOT NULL,
	[TENCD] [nvarchar](50) NULL,
 CONSTRAINT [PK_CHUDE] PRIMARY KEY CLUSTERED 
(
	[MACD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_NGUOITHAN_GIAOVIEN]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[NGUOITHAN]  WITH CHECK ADD  CONSTRAINT [FK_NGUOITHAN_GIAOVIEN] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[NGUOITHAN] CHECK CONSTRAINT [FK_NGUOITHAN_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_KHOA_GIAOVIEN]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[KHOA]  WITH CHECK ADD  CONSTRAINT [FK_KHOA_GIAOVIEN] FOREIGN KEY([TRUONGKHOA])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[KHOA] CHECK CONSTRAINT [FK_KHOA_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_GV_DT_GIAOVIEN]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[GV_DT]  WITH CHECK ADD  CONSTRAINT [FK_GV_DT_GIAOVIEN] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[GV_DT] CHECK CONSTRAINT [FK_GV_DT_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_BOMON_GIAOVIEN]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[BOMON]  WITH CHECK ADD  CONSTRAINT [FK_BOMON_GIAOVIEN] FOREIGN KEY([TRUONGBM])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[BOMON] CHECK CONSTRAINT [FK_BOMON_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_BOMON_KHOA]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[BOMON]  WITH CHECK ADD  CONSTRAINT [FK_BOMON_KHOA] FOREIGN KEY([MAKHOA])
REFERENCES [dbo].[KHOA] ([MAKHOA])
GO
ALTER TABLE [dbo].[BOMON] CHECK CONSTRAINT [FK_BOMON_KHOA]
GO
/****** Object:  ForeignKey [FK_GIAOVIEN_BOMON]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_BOMON] FOREIGN KEY([MABM])
REFERENCES [dbo].[BOMON] ([MABM])
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_GIAOVIEN_BOMON]
GO
/****** Object:  ForeignKey [FK_GIAOVIEN_GIAOVIEN]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_GIAOVIEN] FOREIGN KEY([GVQLCM])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_GIAOVIEN_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_THAMGIADT_CONGVIEC]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[THAMGIADT]  WITH CHECK ADD  CONSTRAINT [FK_THAMGIADT_CONGVIEC] FOREIGN KEY([MADT], [STT])
REFERENCES [dbo].[CONGVIEC] ([MADT], [SOTT])
GO
ALTER TABLE [dbo].[THAMGIADT] CHECK CONSTRAINT [FK_THAMGIADT_CONGVIEC]
GO
/****** Object:  ForeignKey [FK_THAMGIADT_GIAOVIEN]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[THAMGIADT]  WITH CHECK ADD  CONSTRAINT [FK_THAMGIADT_GIAOVIEN] FOREIGN KEY([MAGV])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[THAMGIADT] CHECK CONSTRAINT [FK_THAMGIADT_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_CONGVIEC_DETAI]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[CONGVIEC]  WITH CHECK ADD  CONSTRAINT [FK_CONGVIEC_DETAI] FOREIGN KEY([MADT])
REFERENCES [dbo].[DETAI] ([MADT])
GO
ALTER TABLE [dbo].[CONGVIEC] CHECK CONSTRAINT [FK_CONGVIEC_DETAI]
GO
/****** Object:  ForeignKey [FK_DETAI_CHUDE]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[DETAI]  WITH CHECK ADD  CONSTRAINT [FK_DETAI_CHUDE] FOREIGN KEY([MACD])
REFERENCES [dbo].[CHUDE] ([MACD])
GO
ALTER TABLE [dbo].[DETAI] CHECK CONSTRAINT [FK_DETAI_CHUDE]
GO
/****** Object:  ForeignKey [FK_DETAI_GIAOVIEN]    Script Date: 10/02/2017 10:38:39 ******/
ALTER TABLE [dbo].[DETAI]  WITH CHECK ADD  CONSTRAINT [FK_DETAI_GIAOVIEN] FOREIGN KEY([GVCNDT])
REFERENCES [dbo].[GIAOVIEN] ([MAGV])
GO
ALTER TABLE [dbo].[DETAI] CHECK CONSTRAINT [FK_DETAI_GIAOVIEN]
GO
