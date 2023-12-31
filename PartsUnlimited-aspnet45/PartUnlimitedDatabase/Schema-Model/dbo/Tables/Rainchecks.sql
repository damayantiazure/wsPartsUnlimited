﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

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
ALTER TABLE [dbo].[Rainchecks] ADD CONSTRAINT [PK_dbo.Rainchecks] PRIMARY KEY CLUSTERED ([RaincheckId])
GO
ALTER TABLE [dbo].[Rainchecks] ADD CONSTRAINT [FK_dbo.Rainchecks_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rainchecks] ADD CONSTRAINT [FK_dbo.Rainchecks_dbo.Stores_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Stores] ([StoreId]) ON DELETE CASCADE
GO
