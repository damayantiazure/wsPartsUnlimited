-- <Migration ID="c14e6b8e-fd9e-464d-9eb4-e741eedd64fb" />
GO

PRINT N'Creating [dbo].[AspNetUsers]'
GO
CREATE TABLE [dbo].[AspNetUsers]
(
[Id] [nvarchar] (128) NOT NULL,
[Name] [nvarchar] (max) NULL,
[Email] [nvarchar] (256) NULL,
[EmailConfirmed] [bit] NOT NULL,
[PasswordHash] [nvarchar] (max) NULL,
[SecurityStamp] [nvarchar] (max) NULL,
[PhoneNumber] [nvarchar] (max) NULL,
[PhoneNumberConfirmed] [bit] NOT NULL,
[TwoFactorEnabled] [bit] NOT NULL,
[LockoutEndDateUtc] [datetime] NULL,
[LockoutEnabled] [bit] NOT NULL,
[AccessFailedCount] [int] NOT NULL,
[UserName] [nvarchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_dbo.AspNetUsers] on [dbo].[AspNetUsers]'
GO
ALTER TABLE [dbo].[AspNetUsers] ADD CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED ([Id])
GO
PRINT N'Creating [dbo].[AspNetUserClaims]'
GO
CREATE TABLE [dbo].[AspNetUserClaims]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[UserId] [nvarchar] (128) NOT NULL,
[ClaimType] [nvarchar] (max) NULL,
[ClaimValue] [nvarchar] (max) NULL
)
GO
PRINT N'Creating primary key [PK_dbo.AspNetUserClaims] on [dbo].[AspNetUserClaims]'
GO
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED ([Id])
GO
PRINT N'Creating [dbo].[AspNetUserLogins]'
GO
CREATE TABLE [dbo].[AspNetUserLogins]
(
[LoginProvider] [nvarchar] (128) NOT NULL,
[ProviderKey] [nvarchar] (128) NOT NULL,
[UserId] [nvarchar] (128) NOT NULL
)
GO
PRINT N'Creating primary key [PK_dbo.AspNetUserLogins] on [dbo].[AspNetUserLogins]'
GO
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId])
GO
PRINT N'Creating [dbo].[AspNetRoles]'
GO
CREATE TABLE [dbo].[AspNetRoles]
(
[Id] [nvarchar] (128) NOT NULL,
[Name] [nvarchar] (256) NOT NULL
)
GO
PRINT N'Creating primary key [PK_dbo.AspNetRoles] on [dbo].[AspNetRoles]'
GO
ALTER TABLE [dbo].[AspNetRoles] ADD CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED ([Id])
GO
PRINT N'Creating [dbo].[AspNetUserRoles]'
GO
CREATE TABLE [dbo].[AspNetUserRoles]
(
[UserId] [nvarchar] (128) NOT NULL,
[RoleId] [nvarchar] (128) NOT NULL
)
GO
PRINT N'Creating primary key [PK_dbo.AspNetUserRoles] on [dbo].[AspNetUserRoles]'
GO
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
GO
PRINT N'Creating [dbo].[Products]'
GO
CREATE TABLE [dbo].[Products]
(
[ProductId] [int] NOT NULL IDENTITY(1, 1),
[SkuNumber] [nvarchar] (max) NOT NULL,
[CategoryId] [int] NOT NULL,
[RecommendationId] [int] NOT NULL,
[Title] [nvarchar] (160) NOT NULL,
[Price] [decimal] (18, 2) NOT NULL,
[SalePrice] [decimal] (18, 2) NOT NULL,
[ProductArtUrl] [nvarchar] (1024) NULL,
[Description] [nvarchar] (max) NOT NULL,
[Created] [datetime] NOT NULL,
[ProductDetails] [nvarchar] (max) NOT NULL,
[Inventory] [int] NOT NULL,
[LeadTime] [int] NOT NULL,
[PriceUSD ] [decimal] (18, 2) NULL
)
GO
PRINT N'Creating primary key [PK_dbo.Products] on [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED ([ProductId])
GO
PRINT N'Creating [dbo].[CartItems]'
GO
CREATE TABLE [dbo].[CartItems]
(
[CartItemId] [int] NOT NULL IDENTITY(1, 1),
[CartId] [nvarchar] (max) NOT NULL,
[ProductId] [int] NOT NULL,
[Count] [int] NOT NULL,
[DateCreated] [datetime] NOT NULL
)
GO
PRINT N'Creating primary key [PK_dbo.CartItems] on [dbo].[CartItems]'
GO
ALTER TABLE [dbo].[CartItems] ADD CONSTRAINT [PK_dbo.CartItems] PRIMARY KEY CLUSTERED ([CartItemId])
GO
PRINT N'Creating [dbo].[Orders]'
GO
CREATE TABLE [dbo].[Orders]
(
[OrderId] [int] NOT NULL IDENTITY(1, 1),
[OrderDate] [datetime] NOT NULL,
[Username] [nvarchar] (max) NOT NULL,
[Name] [nvarchar] (160) NOT NULL,
[Address] [nvarchar] (70) NOT NULL,
[City] [nvarchar] (40) NOT NULL,
[State] [nvarchar] (40) NOT NULL,
[PostalCode] [nvarchar] (10) NOT NULL,
[Country] [nvarchar] (40) NOT NULL,
[Phone] [nvarchar] (24) NOT NULL,
[Email] [nvarchar] (max) NOT NULL,
[Total] [decimal] (18, 2) NOT NULL
)
GO
PRINT N'Creating primary key [PK_dbo.Orders] on [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK_dbo.Orders] PRIMARY KEY CLUSTERED ([OrderId])
GO
PRINT N'Creating [dbo].[OrderDetails]'
GO
CREATE TABLE [dbo].[OrderDetails]
(
[OrderDetailId] [int] NOT NULL IDENTITY(1, 1),
[OrderId] [int] NOT NULL,
[ProductId] [int] NOT NULL,
[Count] [int] NOT NULL,
[UnitPrice] [decimal] (18, 2) NOT NULL
)
GO
PRINT N'Creating primary key [PK_dbo.OrderDetails] on [dbo].[OrderDetails]'
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED ([OrderDetailId])
GO
PRINT N'Creating [dbo].[Categories]'
GO
CREATE TABLE [dbo].[Categories]
(
[CategoryId] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (max) NOT NULL,
[Description] [nvarchar] (max) NULL,
[ImageUrl] [nvarchar] (max) NULL
)
GO
PRINT N'Creating primary key [PK_dbo.Categories] on [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK_dbo.Categories] PRIMARY KEY CLUSTERED ([CategoryId])
GO
PRINT N'Creating [dbo].[Rainchecks]'
GO
CREATE TABLE [dbo].[Rainchecks]
(
[RaincheckId] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (max) NULL,
[ProductId] [int] NOT NULL,
[Count] [int] NOT NULL,
[SalePrice] [float] NOT NULL,
[StoreId] [int] NOT NULL
)
GO
PRINT N'Creating primary key [PK_dbo.Rainchecks] on [dbo].[Rainchecks]'
GO
ALTER TABLE [dbo].[Rainchecks] ADD CONSTRAINT [PK_dbo.Rainchecks] PRIMARY KEY CLUSTERED ([RaincheckId])
GO
PRINT N'Creating [dbo].[Stores]'
GO
CREATE TABLE [dbo].[Stores]
(
[StoreId] [int] NOT NULL IDENTITY(1, 1),
[Name] [nvarchar] (max) NULL
)
GO
PRINT N'Creating primary key [PK_dbo.Stores] on [dbo].[Stores]'
GO
ALTER TABLE [dbo].[Stores] ADD CONSTRAINT [PK_dbo.Stores] PRIMARY KEY CLUSTERED ([StoreId])
GO
PRINT N'Adding foreign keys to [dbo].[AspNetUserRoles]'
GO
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
GO
PRINT N'Adding foreign keys to [dbo].[AspNetUserClaims]'
GO
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
GO
PRINT N'Adding foreign keys to [dbo].[AspNetUserLogins]'
GO
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE
GO
PRINT N'Adding foreign keys to [dbo].[CartItems]'
GO
ALTER TABLE [dbo].[CartItems] ADD CONSTRAINT [FK_dbo.CartItems_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
GO
PRINT N'Adding foreign keys to [dbo].[Products]'
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE CASCADE
GO
PRINT N'Adding foreign keys to [dbo].[OrderDetails]'
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
GO
PRINT N'Adding foreign keys to [dbo].[Rainchecks]'
GO
ALTER TABLE [dbo].[Rainchecks] ADD CONSTRAINT [FK_dbo.Rainchecks_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rainchecks] ADD CONSTRAINT [FK_dbo.Rainchecks_dbo.Stores_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Stores] ([StoreId]) ON DELETE CASCADE
GO
