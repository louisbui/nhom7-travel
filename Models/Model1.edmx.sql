
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/14/2022 22:33:38
-- Generated from EDMX file: C:\Users\NGOCBX\Desktop\WEB_DULICH-main\lamlai_web_dulich\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [DuLichDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_HinhAnh_AlbumAnh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[HinhAnh] DROP CONSTRAINT [FK_HinhAnh_AlbumAnh];
GO
IF OBJECT_ID(N'[dbo].[FK_TourDuLich_LoaiTour]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TourDuLich] DROP CONSTRAINT [FK_TourDuLich_LoaiTour];
GO
IF OBJECT_ID(N'[dbo].[FK_TourDuLich_MucGia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TourDuLich] DROP CONSTRAINT [FK_TourDuLich_MucGia];
GO
IF OBJECT_ID(N'[dbo].[FK_TourDuLich_TinhThanh]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TourDuLich] DROP CONSTRAINT [FK_TourDuLich_TinhThanh];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AlbumAnh]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AlbumAnh];
GO
IF OBJECT_ID(N'[dbo].[CamNangDuLich]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CamNangDuLich];
GO
IF OBJECT_ID(N'[dbo].[DichVu]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DichVu];
GO
IF OBJECT_ID(N'[dbo].[HinhAnh]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HinhAnh];
GO
IF OBJECT_ID(N'[dbo].[LoaiTour]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LoaiTour];
GO
IF OBJECT_ID(N'[dbo].[MucGia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[MucGia];
GO
IF OBJECT_ID(N'[dbo].[TaiKhoan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TaiKhoan];
GO
IF OBJECT_ID(N'[dbo].[TinhThanh]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TinhThanh];
GO
IF OBJECT_ID(N'[dbo].[TourDuLich]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TourDuLich];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'LoaiTours'
CREATE TABLE [dbo].[LoaiTours] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Ten] nvarchar(50)  NULL
);
GO

-- Creating table 'MucGias'
CREATE TABLE [dbo].[MucGias] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Gia] nvarchar(100)  NULL
);
GO

-- Creating table 'TinhThanhs'
CREATE TABLE [dbo].[TinhThanhs] (
    [ID_Tinh] int IDENTITY(1,1) NOT NULL,
    [Ten] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'TourDuLiches'
CREATE TABLE [dbo].[TourDuLiches] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TieuDe] nvarchar(500)  NULL,
    [HinhAnh] nvarchar(500)  NULL,
    [SoNgayDiTour] float  NULL,
    [LichDinhKy] nvarchar(100)  NULL,
    [DiaDiem] nvarchar(50)  NULL,
    [SoNguoiToiDa] int  NULL,
    [GiaTour] float  NULL,
    [BaiViet] nvarchar(max)  NULL,
    [idTinh] int  NULL,
    [idLoaiTour] int  NULL,
    [id_MucGia] int  NULL
);
GO

-- Creating table 'TaiKhoans'
CREATE TABLE [dbo].[TaiKhoans] (
    [TenDangNhap] varchar(500)  NOT NULL,
    [MatKhau] varchar(500)  NULL,
    [TenHienThi] nvarchar(50)  NULL,
    [Email] nvarchar(500)  NULL,
    [SoDienThoai] nvarchar(500)  NULL,
    [Active] bit  NULL,
    [HinhAnh] nvarchar(500)  NULL
);
GO

-- Creating table 'AlbumAnhs'
CREATE TABLE [dbo].[AlbumAnhs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TenAlbum] nvarchar(500)  NULL,
    [NguoiDang] nvarchar(50)  NULL,
    [ThoiGian] datetime  NULL,
    [MoTa] nvarchar(500)  NULL
);
GO

-- Creating table 'CamNangDuLiches'
CREATE TABLE [dbo].[CamNangDuLiches] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TieuDe] nvarchar(500)  NULL,
    [TomTat] nvarchar(500)  NULL,
    [HinhAnh] nvarchar(500)  NULL,
    [NoiDung] nvarchar(max)  NULL,
    [NgayViet] datetime  NULL,
    [HienTrangChu] bit  NULL
);
GO

-- Creating table 'DichVus'
CREATE TABLE [dbo].[DichVus] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [TenDichVu] nvarchar(50)  NULL,
    [LinkSeo] nvarchar(500)  NULL,
    [NoiDung] nvarchar(max)  NULL,
    [HinhAnh] nvarchar(500)  NULL,
    [HoatDong] bit  NULL
);
GO

-- Creating table 'HinhAnhs'
CREATE TABLE [dbo].[HinhAnhs] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [idAlbum] int  NOT NULL,
    [Url] nvarchar(500)  NULL,
    [TieuDe] nvarchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'LoaiTours'
ALTER TABLE [dbo].[LoaiTours]
ADD CONSTRAINT [PK_LoaiTours]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'MucGias'
ALTER TABLE [dbo].[MucGias]
ADD CONSTRAINT [PK_MucGias]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID_Tinh] in table 'TinhThanhs'
ALTER TABLE [dbo].[TinhThanhs]
ADD CONSTRAINT [PK_TinhThanhs]
    PRIMARY KEY CLUSTERED ([ID_Tinh] ASC);
GO

-- Creating primary key on [ID] in table 'TourDuLiches'
ALTER TABLE [dbo].[TourDuLiches]
ADD CONSTRAINT [PK_TourDuLiches]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [TenDangNhap] in table 'TaiKhoans'
ALTER TABLE [dbo].[TaiKhoans]
ADD CONSTRAINT [PK_TaiKhoans]
    PRIMARY KEY CLUSTERED ([TenDangNhap] ASC);
GO

-- Creating primary key on [ID] in table 'AlbumAnhs'
ALTER TABLE [dbo].[AlbumAnhs]
ADD CONSTRAINT [PK_AlbumAnhs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'CamNangDuLiches'
ALTER TABLE [dbo].[CamNangDuLiches]
ADD CONSTRAINT [PK_CamNangDuLiches]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'DichVus'
ALTER TABLE [dbo].[DichVus]
ADD CONSTRAINT [PK_DichVus]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'HinhAnhs'
ALTER TABLE [dbo].[HinhAnhs]
ADD CONSTRAINT [PK_HinhAnhs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [idLoaiTour] in table 'TourDuLiches'
ALTER TABLE [dbo].[TourDuLiches]
ADD CONSTRAINT [FK_TourDuLich_LoaiTour]
    FOREIGN KEY ([idLoaiTour])
    REFERENCES [dbo].[LoaiTours]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TourDuLich_LoaiTour'
CREATE INDEX [IX_FK_TourDuLich_LoaiTour]
ON [dbo].[TourDuLiches]
    ([idLoaiTour]);
GO

-- Creating foreign key on [id_MucGia] in table 'TourDuLiches'
ALTER TABLE [dbo].[TourDuLiches]
ADD CONSTRAINT [FK_TourDuLich_MucGia]
    FOREIGN KEY ([id_MucGia])
    REFERENCES [dbo].[MucGias]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TourDuLich_MucGia'
CREATE INDEX [IX_FK_TourDuLich_MucGia]
ON [dbo].[TourDuLiches]
    ([id_MucGia]);
GO

-- Creating foreign key on [idTinh] in table 'TourDuLiches'
ALTER TABLE [dbo].[TourDuLiches]
ADD CONSTRAINT [FK_TourDuLich_TinhThanh]
    FOREIGN KEY ([idTinh])
    REFERENCES [dbo].[TinhThanhs]
        ([ID_Tinh])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TourDuLich_TinhThanh'
CREATE INDEX [IX_FK_TourDuLich_TinhThanh]
ON [dbo].[TourDuLiches]
    ([idTinh]);
GO

-- Creating foreign key on [idAlbum] in table 'HinhAnhs'
ALTER TABLE [dbo].[HinhAnhs]
ADD CONSTRAINT [FK_HinhAnh_AlbumAnh]
    FOREIGN KEY ([idAlbum])
    REFERENCES [dbo].[AlbumAnhs]
        ([ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HinhAnh_AlbumAnh'
CREATE INDEX [IX_FK_HinhAnh_AlbumAnh]
ON [dbo].[HinhAnhs]
    ([idAlbum]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------