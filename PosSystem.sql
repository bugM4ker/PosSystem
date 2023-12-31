USE [PosSystem]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/26/2023 11:26:27 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[UserName] [nvarchar](256) NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [uniqueidentifier] NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[CategoryDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [uniqueidentifier] NOT NULL,
	[InvoiceDate] [datetime2](7) NOT NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[ShippingAddress] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[CustomerName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [uniqueidentifier] NOT NULL,
	[OrderType] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[PaymentId] [uniqueidentifier] NOT NULL,
	[TableId] [uniqueidentifier] NULL,
	[TaxId] [uniqueidentifier] NOT NULL,
	[PromotionId] [uniqueidentifier] NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderItemsId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[OrderItemsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
	[PaymentType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [uniqueidentifier] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductCode] [nvarchar](max) NULL,
	[ProductDescription] [nvarchar](max) NULL,
	[ProductPrice] [decimal](18, 2) NOT NULL,
	[ProductPriceAfterDiscount] [decimal](18, 2) NULL,
	[StockQuantity] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[PromotionId] [uniqueidentifier] NULL,
	[SupplierId] [uniqueidentifier] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotion]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotion](
	[PromotionId] [uniqueidentifier] NOT NULL,
	[PromotionName] [nvarchar](max) NOT NULL,
	[PromotionDescription] [nvarchar](max) NULL,
	[StartDate] [datetime2](7) NULL,
	[EndDate] [datetime2](7) NULL,
	[DisCountPercent] [real] NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[PromotionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierId] [uniqueidentifier] NOT NULL,
	[SupplierName] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[PhoneNumber] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[TableID] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[TableDescription] [nvarchar](max) NULL,
	[IsOccupied] [bit] NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[TableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tax]    Script Date: 10/26/2023 11:26:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[TaxId] [uniqueidentifier] NOT NULL,
	[TaxName] [nvarchar](max) NULL,
	[TaxRate] [real] NULL,
	[IsActive] [bit] NULL,
	[CreatedAt] [datetime2](7) NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedAt] [datetime2](7) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[TaxId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230927122130_initDB', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231015142455_CreatingIdentityTables', N'7.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231016034304_AddedRolesToDb', N'7.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'3efc10c3-7c29-4251-a0ad-3e8f11b9c629', N'Administrator', N'ADMINISTRATOR', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'401a0755-c4e1-4cd2-93c2-29f00cc1ebce', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'65da322c-e418-4527-a9d6-6fc1fea19a15', N'3efc10c3-7c29-4251-a0ad-3e8f11b9c629')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'65da322c-e418-4527-a9d6-6fc1fea19a15', N'401a0755-c4e1-4cd2-93c2-29f00cc1ebce')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd0945913-082d-42fa-bfd1-1e93ccea465f', N'401a0755-c4e1-4cd2-93c2-29f00cc1ebce')
GO
INSERT [dbo].[AspNetUsers] ([UserName], [FirstName], [LastName], [PhoneNumber], [PasswordHash], [ConcurrencyStamp], [SecurityStamp], [Id], [AccessFailedCount], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PhoneNumberConfirmed], [TwoFactorEnabled]) VALUES (N'admin', N'long', N'duong', N'0902814323', N'AQAAAAIAAYagAAAAEEW9/QZxi20m9M623/DpMzMiIlw3ziXyAfFlqKD4NPobIUCspYRlomvfHuqo9Y1P4w==', N'1ef4c9af-bf4e-4000-8359-00d23bbea934', N'VPDDBUJMS5YTY3SS7ESXZVH2ZJYUZNWQ', N'65da322c-e418-4527-a9d6-6fc1fea19a15', 0, N'minhlong76999@gmail.com', 0, 1, NULL, N'MINHLONG76999@GMAIL.COM', N'ADMIN', 0, 0)
INSERT [dbo].[AspNetUsers] ([UserName], [FirstName], [LastName], [PhoneNumber], [PasswordHash], [ConcurrencyStamp], [SecurityStamp], [Id], [AccessFailedCount], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PhoneNumberConfirmed], [TwoFactorEnabled]) VALUES (N'long7699', N'long', N'minh', N'0902814323', N'AQAAAAIAAYagAAAAEOyNfwWQzs4JrUi/efoLOagNYcUeqDtIbXGjmJpK3W9RTDkseiL4oYAxxcNxXmH+1Q==', N'09981c74-6258-4330-8b4c-28c38fe768c6', N'2OQYDOIWRYYSHT2DKAD44A6JUZAEKSKM', N'd0945913-082d-42fa-bfd1-1e93ccea465f', 0, N'minhlong769999@gmail.com', 0, 1, NULL, N'MINHLONG769999@GMAIL.COM', N'LONG7699', 0, 0)
GO
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDescription], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'e26f9dfb-0b4b-4caa-427a-08dbd533aec1', N'Burger', N'string', 1, CAST(N'2023-10-25T15:23:35.4459095' AS DateTime2), N'Admin', CAST(N'2023-10-25T15:23:35.4459121' AS DateTime2), N'Admin')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDescription], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'9b9e02a9-208a-44dc-3d9d-08dbd53471e2', N'string', N'string', 1, CAST(N'2023-10-25T15:29:02.8675485' AS DateTime2), N'Admin', CAST(N'2023-10-25T15:29:02.8675514' AS DateTime2), N'Admin')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDescription], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'c9d4c053-49b6-410c-bc78-2d54a9991870', N'Gà Rán', N'Description', 1, CAST(N'2023-10-16T10:43:04.2712574' AS DateTime2), N'Admin', CAST(N'2023-10-16T10:43:04.2712740' AS DateTime2), N'Admin')
INSERT [dbo].[Category] ([CategoryId], [CategoryName], [CategoryDescription], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'c9d4c053-49b6-410c-bc78-2d54a9991871', N'Hambuger', N'Description', 1, CAST(N'2023-10-16T10:43:04.2712745' AS DateTime2), N'Admin', CAST(N'2023-10-16T10:43:04.2712747' AS DateTime2), N'Admin')
GO
INSERT [dbo].[Invoice] ([InvoiceId], [InvoiceDate], [TotalAmount], [ShippingAddress], [Status], [OrderId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [CustomerName]) VALUES (N'0aab67e8-e515-4557-98e1-08dbd553f008', CAST(N'2023-10-25T19:14:28.8839225' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'string', N'Success', N'0064b498-6233-4814-ebb5-08dbd5522f12', NULL, CAST(N'2023-10-25T19:14:28.8844587' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', CAST(N'2023-10-25T19:14:28.8844627' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', N'Long Minh')
INSERT [dbo].[Invoice] ([InvoiceId], [InvoiceDate], [TotalAmount], [ShippingAddress], [Status], [OrderId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [CustomerName]) VALUES (N'6a720b22-f362-48c2-3532-08dbd5db529a', CAST(N'2023-10-26T11:23:36.3431467' AS DateTime2), CAST(250000.00 AS Decimal(18, 2)), N'string', N'Success', N'26399500-ca29-40d8-966a-08dbd39db8f0', NULL, CAST(N'2023-10-26T11:23:36.3432517' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', CAST(N'2023-10-26T11:23:36.3432527' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', N'string')
GO
INSERT [dbo].[Order] ([OrderId], [OrderType], [Status], [UserId], [PaymentId], [TableId], [TaxId], [PromotionId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'26399500-ca29-40d8-966a-08dbd39db8f0', N'Dining', N'Pending', N'00000000-0000-0000-0000-000000000000', N'19176a39-7121-49a5-cff5-08dbd171a453', N'46ac8270-9f5a-4581-ed55-08dbd171b42c', N'f1dfea91-4d51-44f7-7e9c-08dbd171c5b0', N'2abb0ecb-54bd-4767-f510-08dbd39c771b', 0, CAST(N'2023-10-23T14:56:55.4394480' AS DateTime2), N'd0945913-082d-42fa-bfd1-1e93ccea465f', CAST(N'2023-10-23T14:56:55.4394525' AS DateTime2), N'd0945913-082d-42fa-bfd1-1e93ccea465f')
INSERT [dbo].[Order] ([OrderId], [OrderType], [Status], [UserId], [PaymentId], [TableId], [TaxId], [PromotionId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'3e3ee9fe-7b7b-46b5-c5a0-08dbd5510ff3', N'Dinning', N'Pending', N'00000000-0000-0000-0000-000000000000', N'19176a39-7121-49a5-cff5-08dbd171a453', N'334ef926-1714-429e-061d-08dbd5502989', N'f1dfea91-4d51-44f7-7e9c-08dbd171c5b0', N'2abb0ecb-54bd-4767-f510-08dbd39c771b', 1, CAST(N'2023-10-25T18:53:53.9690065' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', CAST(N'2023-10-25T18:53:53.9690118' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15')
INSERT [dbo].[Order] ([OrderId], [OrderType], [Status], [UserId], [PaymentId], [TableId], [TaxId], [PromotionId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'e7867976-df40-4df7-c5a1-08dbd5510ff3', N'Dinning', N'Pending', N'00000000-0000-0000-0000-000000000000', N'19176a39-7121-49a5-cff5-08dbd171a453', N'334ef926-1714-429e-061d-08dbd5502989', N'f1dfea91-4d51-44f7-7e9c-08dbd171c5b0', N'2abb0ecb-54bd-4767-f510-08dbd39c771b', 1, CAST(N'2023-10-25T18:56:03.0664039' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', CAST(N'2023-10-25T18:56:03.0664081' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15')
INSERT [dbo].[Order] ([OrderId], [OrderType], [Status], [UserId], [PaymentId], [TableId], [TaxId], [PromotionId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'0064b498-6233-4814-ebb5-08dbd5522f12', N'Dinning', N'Pending', N'00000000-0000-0000-0000-000000000000', N'19176a39-7121-49a5-cff5-08dbd171a453', N'334ef926-1714-429e-061d-08dbd5502989', N'f1dfea91-4d51-44f7-7e9c-08dbd171c5b0', N'2abb0ecb-54bd-4767-f510-08dbd39c771b', 0, CAST(N'2023-10-25T19:01:55.6494934' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', CAST(N'2023-10-25T19:01:55.6494980' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15')
INSERT [dbo].[Order] ([OrderId], [OrderType], [Status], [UserId], [PaymentId], [TableId], [TaxId], [PromotionId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'96ad351f-721c-402e-0052-08dbd5622f40', N'Dinning', N'Pending', N'00000000-0000-0000-0000-000000000000', N'19176a39-7121-49a5-cff5-08dbd171a453', N'334ef926-1714-429e-061d-08dbd5502989', N'f1dfea91-4d51-44f7-7e9c-08dbd171c5b0', N'2abb0ecb-54bd-4767-f510-08dbd39c771b', NULL, CAST(N'2023-10-25T20:56:27.8950776' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', CAST(N'2023-10-25T20:56:27.8950820' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15')
GO
INSERT [dbo].[OrderItem] ([OrderItemsId], [Quantity], [Price], [ProductId], [OrderId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'1118f306-92ed-4ad3-fc9c-08dbd5db2174', 10, CAST(25000.00 AS Decimal(18, 2)), N'00000000-0000-0000-0000-000000000001', N'26399500-ca29-40d8-966a-08dbd39db8f0', NULL, CAST(N'2023-10-26T11:22:13.8798363' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', CAST(N'2023-10-26T11:22:13.8798394' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15')
GO
INSERT [dbo].[Payment] ([PaymentId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy], [PaymentType]) VALUES (N'19176a39-7121-49a5-cff5-08dbd171a453', 1, CAST(N'2023-10-20T20:37:01.4415500' AS DateTime2), N'Admin', CAST(N'2023-10-20T20:37:01.4416121' AS DateTime2), N'Admin', N'Online')
GO
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductCode], [ProductDescription], [ProductPrice], [ProductPriceAfterDiscount], [StockQuantity], [Image], [PromotionId], [SupplierId], [CategoryId], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'00000000-0000-0000-0000-000000000001', N'Cánh gà', N'GR01', N'Miêu tả', CAST(25000.00 AS Decimal(18, 2)), CAST(25000.00 AS Decimal(18, 2)), 1, N'test', NULL, N'c9d4c053-49b6-410c-bc78-2d54a9991855', N'c9d4c053-49b6-410c-bc78-2d54a9991871', 1, CAST(N'2023-10-16T10:43:04.2713204' AS DateTime2), N'Admin', CAST(N'2023-10-16T10:43:04.2713206' AS DateTime2), N'Admin')
GO
INSERT [dbo].[Promotion] ([PromotionId], [PromotionName], [PromotionDescription], [StartDate], [EndDate], [DisCountPercent], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'2abb0ecb-54bd-4767-f510-08dbd39c771b', N'10%', N'giam 10 phan tram', CAST(N'2023-10-23T07:47:58.8620000' AS DateTime2), CAST(N'2023-10-23T07:47:58.8620000' AS DateTime2), 10, NULL, CAST(N'2023-10-23T14:48:36.2089818' AS DateTime2), N'Admin', CAST(N'2023-10-23T14:48:36.2090637' AS DateTime2), N'Admin')
GO
INSERT [dbo].[Supplier] ([SupplierId], [SupplierName], [Email], [PhoneNumber], [Address], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'c9d4c053-49b6-410c-bc78-2d54a9991855', N'Công ty CP', N'cp@gmail.com', 90123456, N'Tphcm', 1, CAST(N'2023-10-16T10:43:04.2713493' AS DateTime2), N'Admin', CAST(N'2023-10-16T10:43:04.2713495' AS DateTime2), N'Admin')
GO
INSERT [dbo].[Table] ([TableID], [Name], [TableDescription], [IsOccupied], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'46ac8270-9f5a-4581-ed55-08dbd171b42c', N'Ban 1', N'ban 1', 0, 1, CAST(N'2023-10-20T20:37:28.7010580' AS DateTime2), N'Admin', CAST(N'2023-10-20T20:37:28.7010629' AS DateTime2), N'Admin')
INSERT [dbo].[Table] ([TableID], [Name], [TableDescription], [IsOccupied], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'334ef926-1714-429e-061d-08dbd5502989', N'Ban 2', N'Ban 2', 1, 1, CAST(N'2023-10-25T18:47:27.3667518' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15', CAST(N'2023-10-25T18:47:27.3667570' AS DateTime2), N'65da322c-e418-4527-a9d6-6fc1fea19a15')
GO
INSERT [dbo].[Tax] ([TaxId], [TaxName], [TaxRate], [IsActive], [CreatedAt], [CreatedBy], [UpdatedAt], [UpdatedBy]) VALUES (N'f1dfea91-4d51-44f7-7e9c-08dbd171c5b0', N'10%', 10, 1, CAST(N'2023-10-20T20:37:58.1144413' AS DateTime2), N'Admin', CAST(N'2023-10-20T20:37:58.1144436' AS DateTime2), N'Admin')
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [FirstName]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [LastName]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Id]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [AccessFailedCount]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [EmailConfirmed]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [LockoutEnabled]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [PhoneNumberConfirmed]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [TwoFactorEnabled]
GO
ALTER TABLE [dbo].[Payment] ADD  DEFAULT (N'') FOR [PaymentType]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_Invoice_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_Invoice_Order_OrderId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment_PaymentId] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payment] ([PaymentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Payment_PaymentId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Promotion_PromotionId] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([PromotionId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Promotion_PromotionId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Table_TableId] FOREIGN KEY([TableId])
REFERENCES [dbo].[Table] ([TableID])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Table_TableId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Tax_TaxId] FOREIGN KEY([TaxId])
REFERENCES [dbo].[Tax] ([TaxId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Tax_TaxId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Order_OrderId]
GO
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_Product_ProductId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category_CategoryId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Promotion_PromotionId] FOREIGN KEY([PromotionId])
REFERENCES [dbo].[Promotion] ([PromotionId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Promotion_PromotionId]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([SupplierId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier_SupplierId]
GO
