﻿/*
    This script was generated by SQL Change Automation to help provide object-level history. This script should never be edited manually.
    For more information see: https://www.red-gate.com/sca/dev/offline-schema-model
*/

CREATE TABLE [dbo].[OrderDetails]
(
[OrderDetailId] [int] NOT NULL IDENTITY(1, 1),
[OrderId] [int] NOT NULL,
[ProductId] [int] NOT NULL,
[Count] [int] NOT NULL,
[UnitPrice] [decimal] (18, 2) NOT NULL
)
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [PK_dbo.OrderDetails] PRIMARY KEY CLUSTERED ([OrderDetailId])
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [FK_dbo.OrderDetails_dbo.Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] ADD CONSTRAINT [FK_dbo.OrderDetails_dbo.Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([ProductId]) ON DELETE CASCADE
GO