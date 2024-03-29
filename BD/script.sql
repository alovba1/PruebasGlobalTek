USE [master]
GO
/****** Object:  Database [BD]    Script Date: 15/01/2024 11:36:21 a. m. ******/
CREATE DATABASE [BD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BD', FILENAME = N'C:\Users\Personal\BD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BD_log', FILENAME = N'C:\Users\Personal\BD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BD] SET ARITHABORT OFF 
GO
ALTER DATABASE [BD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BD] SET  MULTI_USER 
GO
ALTER DATABASE [BD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BD] SET QUERY_STORE = OFF
GO
USE [BD]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalles]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdFactura] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [int] NOT NULL,
 CONSTRAINT [PK_Detalles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NumeroFactura] [int] NULL,
	[Fecha] [nvarchar](max) NULL,
	[TipodePago] [nvarchar](max) NULL,
	[DocumentoCliente] [nvarchar](max) NULL,
	[Subtotal] [int] NULL,
	[Descuento] [decimal](18, 2) NULL,
	[Iva] [decimal](18, 2) NULL,
	[TotalDescuento] [decimal](10, 2) NULL,
	[Totalimpuesto] [decimal](10, 2) NULL,
	[Total] [decimal](10, 2) NULL,
	[NombreCliente] [nvarchar](255) NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[producto] [nvarchar](max) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240111233458_Initial Migration', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240112001749_Initial Migration1', N'7.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240112002504_Initial Migration2', N'7.0.13')
GO
SET IDENTITY_INSERT [dbo].[Detalles] ON 

INSERT [dbo].[Detalles] ([Id], [IdFactura], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (1, 1, 1, 1, 100000)
INSERT [dbo].[Detalles] ([Id], [IdFactura], [IdProducto], [Cantidad], [PrecioUnitario]) VALUES (2, 1, 1, 1, 100000)
SET IDENTITY_INSERT [dbo].[Detalles] OFF
GO
SET IDENTITY_INSERT [dbo].[Facturas] ON 

INSERT [dbo].[Facturas] ([Id], [NumeroFactura], [Fecha], [TipodePago], [DocumentoCliente], [Subtotal], [Descuento], [Iva], [TotalDescuento], [Totalimpuesto], [Total], [NombreCliente]) VALUES (1, 1, N'2024-01-12', N'Efectivo', N'123456789', 90000, CAST(10000.00 AS Decimal(18, 2)), CAST(19000.00 AS Decimal(18, 2)), CAST(10000.00 AS Decimal(10, 2)), CAST(19000.00 AS Decimal(10, 2)), CAST(109000.00 AS Decimal(10, 2)), N'Nombre Cliente')
INSERT [dbo].[Facturas] ([Id], [NumeroFactura], [Fecha], [TipodePago], [DocumentoCliente], [Subtotal], [Descuento], [Iva], [TotalDescuento], [Totalimpuesto], [Total], [NombreCliente]) VALUES (3003, 2, N'2024-01-26', N'Credito', N'8765454', 301, CAST(19.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), CAST(19.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), CAST(311.00 AS Decimal(10, 2)), N'Maria Suarez')
SET IDENTITY_INSERT [dbo].[Facturas] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([Id], [producto]) VALUES (1, N'Camisas')
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
/****** Object:  StoredProcedure [dbo].[spCalcular]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spCalcular] 
    @NumeroFactura INT = NULL,
    @Fecha NVARCHAR(255) = NULL,
    @TipodePago NVARCHAR(255) = NULL,
    @DocumentoCliente NVARCHAR(255) = NULL,
    @Descuento INT = NULL,
    @Iva INT = NULL,
    @TotalDescuento INT = NULL,
    @Totalimpuesto INT = NULL,
    @Total INT = NULL,
    @NombreCliente NVARCHAR(255) = NULL
AS
BEGIN
    SET NOCOUNT ON;

  
    DECLARE @Subtotal INT;

    SELECT @Subtotal = SUM(D.cantidad * D.precioUnitario)
    FROM [Detalles] D
    JOIN [Productos] P ON D.idProducto = P.idProducto
    WHERE D.idFactura = @NumeroFactura;

    SET @Subtotal = @Subtotal - @Descuento; 

    SET @TotalDescuento = @Descuento;
    SET @Totalimpuesto = @Iva;
    SET @Total = @Subtotal + @Iva;

   
    INSERT INTO [Facturas]
        ([NumeroFactura]
        ,[Fecha]
        ,[TipodePago]
        ,[DocumentoCliente]
        ,[Subtotal]
        ,[Descuento]
        ,[Iva]
        ,[TotalDescuento]
        ,[Totalimpuesto]
        ,[Total]
        ,[NombreCliente]
        )
    VALUES
        (@NumeroFactura
        ,@Fecha
        ,@TipodePago
        ,@DocumentoCliente
        ,@Subtotal 
        ,@Descuento
        ,@Iva
        ,@TotalDescuento
        ,@Totalimpuesto
        ,@Total
        ,@NombreCliente
        );

    SELECT @@IDENTITY AS 'IdFactura'; -- Devolver el ID de la factura recién insertada
END
GO
/****** Object:  StoredProcedure [dbo].[spDelete]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spDelete] 
	-- Add the parameters for the stored procedure here
	@Id int
 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM dbo.Facturas WHERE id = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[spListAll]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spListAll] 
 

AS
BEGIN


	SELECT 	Id,NumeroFactura,Fecha,TipodePago,DocumentoCliente,NombreCliente,Descuento,Iva,Total
	from dbo.Facturas


END
GO
/****** Object:  StoredProcedure [dbo].[spListId]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spListId] 
	-- Add the parameters for the stored procedure here
  
	@Id int = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT 		Id,NumeroFactura,Fecha,TipodePago,DocumentoCliente,NombreCliente,Descuento,Iva,Total
	from dbo.Facturas
where Id = @Id

END
GO
/****** Object:  StoredProcedure [dbo].[spSave]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSave] 
	-- Add the parameters for the stored procedure here
	

	@NumeroFactura int = null,
	@Fecha nvarchar(255) = null,
	@TipodePago nvarchar(255) = null,
	@DocumentoCliente nvarchar(255) = null,
	@Subtotal int = null,
	@Descuento int = null,
	@Iva int = null,
	@TotalDescuento int = null,
	@Totalimpuesto int = null,
	@Total int = null,
	@NombreCliente nvarchar(255) = null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [Facturas]
           ([NumeroFactura]
           ,[Fecha]
		   ,[TipodePago]
		   ,[DocumentoCliente]
		   ,[Subtotal]
		   ,[Descuento]
		   ,[Iva]
		   ,[TotalDescuento]
		   ,[Totalimpuesto]
		   ,[Total]
		   ,[NombreCliente]
		
          )
     VALUES
           (@NumeroFactura
           ,@Fecha
		   ,@TipodePago
		   ,@DocumentoCliente
		   ,@Subtotal 
		   ,@Descuento
		   ,@Iva
		   ,@TotalDescuento
		   ,@Totalimpuesto
		   ,@Total
		   ,@NombreCliente
		  
           )
select @@identity 
END
GO
/****** Object:  StoredProcedure [dbo].[spSaveDetalle]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spSaveDetalle] 
	-- Add the parameters for the stored procedure here
	

	@IdFactura int = null,
	@IdProducto int = null,
	@Cantidad int = null,
	@PrecioUnitario int = null
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	INSERT INTO [Detalles]
           (
            [IdFactura]
		   ,[IdProducto]
		   ,[Cantidad]
		   ,[PrecioUnitario]
		   
		
          )
     VALUES
           (@IdFactura
           ,@IdProducto
		   ,@Cantidad
		   ,@PrecioUnitario
		
		  
           )
select @@identity 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpDate]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[spUpDate] 
	-- Add the parameters for the stored procedure here
	@Id int,
    @NumeroFactura int = null,
	@Fecha nvarchar(255) = null,
	@TipodePago nvarchar(255) = null,
	@DocumentoCliente nvarchar(255) = null,
	@Subtotal int = null,
	@Descuento nvarchar(255) = null,
	@Iva int = null,
	@TotalDescuento int = null,
	@Totalimpuesto int = null,
	@Total int = null,
	@NombreCliente nvarchar(255) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE dbo.Facturas SET NumeroFactura=@NumeroFactura,Fecha =@Fecha ,
	TipodePago=@TipodePago,DocumentoCliente = @DocumentoCliente, Subtotal=@Subtotal,
	Descuento=@Descuento,Iva=@Iva,TotalDescuento  = @TotalDescuento,Totalimpuesto=@Totalimpuesto,Total=@Total,NombreCliente=@NombreCliente
	WHERE id = @Id 
END
GO
/****** Object:  StoredProcedure [dbo].[spUpDateCalcular]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpDateCalcular] 
    @Id int,
    @NumeroFactura int = null,
    @Fecha nvarchar(255) = null,
    @TipodePago nvarchar(255) = null,
    @DocumentoCliente nvarchar(255) = null,
    @Subtotal decimal = null,
    @Descuento decimal(18,2),
    @Iva decimal(18,2),
    @TotalDescuento decimal(10,2),
    @Totalimpuesto decimal(10,2),
    @Total decimal (10,2),
    @NombreCliente nvarchar(255) = null
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @Subtotal = D.Cantidad * D.PrecioUnitario
    FROM [Detalles] D
    INNER JOIN [dbo].[Productos] P ON D.IdProducto = P.Id
    WHERE D.idFactura = @NumeroFactura;

    PRINT '@Subtotal1: ' + ISNULL(CONVERT(nvarchar, @Subtotal), 'NULL');
    DECLARE @rIva decimal(18,2)
	DECLARE @rDescuento decimal(18,2)
    -- Convierte el Iva y el Descuento a porcentaje si no son nulos
    SET @rIva = @Iva / 100; -- Asegura que el Iva sea un decimal
    SET @rDescuento = @Descuento / 100; -- Asegura que el Descuento sea un decimal

    PRINT '@rIva: ' + ISNULL(CONVERT(nvarchar, @rIva), 'NULL');
    PRINT '@rDescuento: ' + ISNULL(CONVERT(nvarchar, @rDescuento), 'NULL');

    -- Aplica los porcentajes a los valores
    SET @TotalDescuento = @Subtotal * @rDescuento;
    SET @Totalimpuesto = @Subtotal * @rIva;
    SET @Subtotal = @Subtotal - @TotalDescuento; -- Descuenta el total de descuento
    SET @Total = @Subtotal + @Totalimpuesto;

    PRINT '@Subtotal2: ' + ISNULL(CONVERT(nvarchar, @Subtotal), 'NULL');
    PRINT '@Totalimpuesto: ' + ISNULL(CONVERT(nvarchar, @Totalimpuesto), 'NULL');
    PRINT '@TotalDescuento: ' + ISNULL(CONVERT(nvarchar, @TotalDescuento), 'NULL');
    PRINT '@Total: ' + ISNULL(CONVERT(nvarchar, @Total), 'NULL');

    -- Insert statements for procedure here
    UPDATE dbo.Facturas SET 
        NumeroFactura = @NumeroFactura,
        Fecha = @Fecha,
        TipodePago = @TipodePago,
        DocumentoCliente = @DocumentoCliente,
        Subtotal = @Subtotal,
        Descuento = @TotalDescuento,
        Iva = @Totalimpuesto,
        TotalDescuento = @TotalDescuento,
        Totalimpuesto = @Totalimpuesto,
        Total = @Total,
        NombreCliente = @NombreCliente
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [dbo].[spUpDateCalcularUno]    Script Date: 15/01/2024 11:36:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spUpDateCalcularUno] 
    @Id int,
    @NumeroFactura int = null,
    @Fecha nvarchar(255) = null,
    @TipodePago nvarchar(255) = null,
    @DocumentoCliente nvarchar(255) = null,
    @Subtotal decimal = null,
    @Descuento decimal(18,2),
    @Iva decimal(18,2),
    @TotalDescuento decimal(10,2),
    @Totalimpuesto decimal(10,2),
    @Total decimal (10,2),
    @NombreCliente nvarchar(255) = null
AS
BEGIN
    SET NOCOUNT ON;

    SELECT @Subtotal = D.Cantidad * D.PrecioUnitario
    FROM [Detalles] D
    INNER JOIN [dbo].[Productos] P ON D.IdProducto = P.Id
    WHERE D.idFactura = @NumeroFactura;

    PRINT '@Subtotal1: ' + ISNULL(CONVERT(nvarchar, @Subtotal), 'NULL');
    DECLARE @rIva decimal(18,2)
	DECLARE @rDescuento decimal(18,2)
    -- Convierte el Iva y el Descuento a porcentaje si no son nulos
    SET @rIva = @Iva / 100; -- Asegura que el Iva sea un decimal
    SET @rDescuento = @Descuento / 100; -- Asegura que el Descuento sea un decimal

    PRINT '@rIva: ' + ISNULL(CONVERT(nvarchar, @rIva), 'NULL');
    PRINT '@rDescuento: ' + ISNULL(CONVERT(nvarchar, @rDescuento), 'NULL');

    -- Aplica los porcentajes a los valores
    SET @TotalDescuento = @Subtotal * @rDescuento;
    SET @Totalimpuesto = @Subtotal * @rIva;
    SET @Subtotal = @Subtotal - @TotalDescuento; -- Descuenta el total de descuento
    SET @Total = @Subtotal + @Totalimpuesto;

    PRINT '@Subtotal2: ' + ISNULL(CONVERT(nvarchar, @Subtotal), 'NULL');
    PRINT '@Totalimpuesto: ' + ISNULL(CONVERT(nvarchar, @Totalimpuesto), 'NULL');
    PRINT '@TotalDescuento: ' + ISNULL(CONVERT(nvarchar, @TotalDescuento), 'NULL');
    PRINT '@Total: ' + ISNULL(CONVERT(nvarchar, @Total), 'NULL');

    -- Insert statements for procedure here
    UPDATE dbo.Facturas SET 
        NumeroFactura = @NumeroFactura,
        Fecha = @Fecha,
        TipodePago = @TipodePago,
        DocumentoCliente = @DocumentoCliente,
        Subtotal = @Subtotal,
        Descuento = @TotalDescuento,
        Iva = @Totalimpuesto,
        TotalDescuento = @TotalDescuento,
        Totalimpuesto = @Totalimpuesto,
        Total = @Total,
        NombreCliente = @NombreCliente
    WHERE Id = @Id;
END
GO
USE [master]
GO
ALTER DATABASE [BD] SET  READ_WRITE 
GO
