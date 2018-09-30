CREATE TABLE [crm].[PurchaseOrders] (
    [PO Number]      NVARCHAR (50)  NOT NULL,
    [VendorID]       NVARCHAR (20)  NULL,
    [VendorName]     NVARCHAR (50)  NULL,
    [VendorAddress]  NVARCHAR (50)  NULL,
    [ItemID]         NVARCHAR (50)  NULL,
    [Quantity]       REAL           DEFAULT ((0)) NULL,
    [Notes]          NVARCHAR (255) NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [PurchaseOrders$PrimaryKey] PRIMARY KEY CLUSTERED ([PO Number] ASC),
    CONSTRAINT [SSMA_CC$PurchaseOrders$ItemID$disallow_zero_length] CHECK (len([ItemID])>(0)),
    CONSTRAINT [SSMA_CC$PurchaseOrders$Notes$disallow_zero_length] CHECK (len([Notes])>(0)),
    CONSTRAINT [SSMA_CC$PurchaseOrders$PO Number$disallow_zero_length] CHECK (len([PO Number])>(0)),
    CONSTRAINT [SSMA_CC$PurchaseOrders$VendorAddress$disallow_zero_length] CHECK (len([VendorAddress])>(0)),
    CONSTRAINT [SSMA_CC$PurchaseOrders$VendorID$disallow_zero_length] CHECK (len([VendorID])>(0)),
    CONSTRAINT [SSMA_CC$PurchaseOrders$VendorName$disallow_zero_length] CHECK (len([VendorName])>(0)),
    CONSTRAINT [PurchaseOrders$VendorsPurchaseOrders] FOREIGN KEY ([VendorID]) REFERENCES [crm].[Vendors] ([VendorID]) ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [PurchaseOrders$ItemID]
    ON [crm].[PurchaseOrders]([ItemID] ASC);


GO
CREATE NONCLUSTERED INDEX [PurchaseOrders$POID]
    ON [crm].[PurchaseOrders]([PO Number] ASC);


GO
CREATE NONCLUSTERED INDEX [PurchaseOrders$VendorID]
    ON [crm].[PurchaseOrders]([VendorID] ASC);


GO
CREATE NONCLUSTERED INDEX [PurchaseOrders$VendorsPurchaseOrders]
    ON [crm].[PurchaseOrders]([VendorID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[ItemID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'INDEX', @level2name = N'PurchaseOrders$ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[POID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'INDEX', @level2name = N'PurchaseOrders$POID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[VendorID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'INDEX', @level2name = N'PurchaseOrders$VendorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[VendorsPurchaseOrders]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'INDEX', @level2name = N'PurchaseOrders$VendorsPurchaseOrders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[PO Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'COLUMN', @level2name = N'PO Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[VendorID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'COLUMN', @level2name = N'VendorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[VendorName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'COLUMN', @level2name = N'VendorName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[VendorAddress]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'COLUMN', @level2name = N'VendorAddress';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Links to Inventory where items will come in', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'COLUMN', @level2name = N'ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[ItemID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'COLUMN', @level2name = N'ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[Quantity]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'COLUMN', @level2name = N'Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[Notes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'CONSTRAINT', @level2name = N'PurchaseOrders$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PurchaseOrders].[VendorsPurchaseOrders]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PurchaseOrders', @level2type = N'CONSTRAINT', @level2name = N'PurchaseOrders$VendorsPurchaseOrders';

