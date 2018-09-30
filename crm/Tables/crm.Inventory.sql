CREATE TABLE [crm].[Inventory] (
    [Bin Location]             NVARCHAR (15)  NULL,
    [ID]                       INT            IDENTITY (1, 1) NOT NULL,
    [ItemID]                   NVARCHAR (50)  NOT NULL,
    [Tracked]                  BIT            DEFAULT ((0)) NULL,
    [SystemCode]               NVARCHAR (50)  NULL,
    [Supplier]                 NVARCHAR (50)  NULL,
    [Supplier Acct #]          NVARCHAR (50)  NULL,
    [Supplier Contact Name]    NVARCHAR (50)  NULL,
    [VendorID]                 NVARCHAR (20)  NULL,
    [Supplier Part Number]     NVARCHAR (50)  NULL,
    [Description]              NVARCHAR (255) NULL,
    [On Hand]                  REAL           DEFAULT ((0)) NULL,
    [Retail]                   MONEY          NULL,
    [Extended]                 MONEY          DEFAULT ((0)) NULL,
    [Manufacturer Part Number] NVARCHAR (50)  NULL,
    [Measure]                  NVARCHAR (50)  NULL,
    [Cost]                     MONEY          DEFAULT ((0)) NULL,
    [On Order]                 NVARCHAR (50)  DEFAULT ((0)) NULL,
    [Backordered]              NVARCHAR (50)  NULL,
    [Manufacturer]             NVARCHAR (50)  NULL,
    [Update]                   NVARCHAR (50)  NULL,
    [Quantity to Order]        NVARCHAR (50)  NULL,
    [Stock Level]              NVARCHAR (50)  DEFAULT ((0)) NULL,
    [Qty changes]              NVARCHAR (50)  NULL,
    [Notes]                    NVARCHAR (MAX) NULL,
    [Product Type]             NVARCHAR (10)  NULL,
    [Show on order form]       NVARCHAR (50)  DEFAULT ('No') NULL,
    [Department]               NVARCHAR (50)  NULL,
    [Prior Order Quantity]     NVARCHAR (50)  NULL,
    [Ordering notes]           NVARCHAR (50)  NULL,
    [PO extended Amt]          MONEY          DEFAULT ((0)) NULL,
    [PO Order Qty]             NVARCHAR (50)  NULL,
    [Ship Via]                 NVARCHAR (50)  NULL,
    [Reference]                NVARCHAR (50)  NULL,
    [Ship Date]                NVARCHAR (50)  NULL,
    [PO Number]                NVARCHAR (50)  NULL,
    [PO Total]                 MONEY          DEFAULT ((0)) NULL,
    [Last Order Date]          NVARCHAR (50)  NULL,
    [Last Order Quantity]      NVARCHAR (50)  NULL,
    [AssemblyTime]             INT            DEFAULT ((0)) NULL,
    [DeliveryTime]             INT            DEFAULT ((0)) NULL,
    [BackorderTime]            INT            DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]           ROWVERSION     NOT NULL,
    CONSTRAINT [Inventory$PrimaryKey] PRIMARY KEY CLUSTERED ([ItemID] ASC),
    CONSTRAINT [SSMA_CC$Inventory$Backordered$disallow_zero_length] CHECK (len([Backordered])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Department$disallow_zero_length] CHECK (len([Department])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Description$disallow_zero_length] CHECK (len([Description])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$ItemID$disallow_zero_length] CHECK (len([ItemID])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Last Order Date$disallow_zero_length] CHECK (len([Last Order Date])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Last Order Quantity$disallow_zero_length] CHECK (len([Last Order Quantity])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Manufacturer Part Number$disallow_zero_length] CHECK (len([Manufacturer Part Number])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Manufacturer$disallow_zero_length] CHECK (len([Manufacturer])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Measure$disallow_zero_length] CHECK (len([Measure])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Notes$disallow_zero_length] CHECK (len([Notes])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$On Order$disallow_zero_length] CHECK (len([On Order])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Ordering notes$disallow_zero_length] CHECK (len([Ordering notes])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$PO Number$disallow_zero_length] CHECK (len([PO Number])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$PO Order Qty$disallow_zero_length] CHECK (len([PO Order Qty])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Prior Order Quantity$disallow_zero_length] CHECK (len([Prior Order Quantity])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Product Type$disallow_zero_length] CHECK (len([Product Type])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Qty changes$disallow_zero_length] CHECK (len([Qty changes])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Quantity to Order$disallow_zero_length] CHECK (len([Quantity to Order])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Reference$disallow_zero_length] CHECK (len([Reference])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Ship Via$disallow_zero_length] CHECK (len([Ship Via])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Show on order form$disallow_zero_length] CHECK (len([Show on order form])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Stock Level$disallow_zero_length] CHECK (len([Stock Level])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Supplier Acct #$disallow_zero_length] CHECK (len([Supplier Acct #])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Supplier Contact Name$disallow_zero_length] CHECK (len([Supplier Contact Name])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Supplier$disallow_zero_length] CHECK (len([Supplier])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$SystemCode$disallow_zero_length] CHECK (len([SystemCode])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$Update$disallow_zero_length] CHECK (len([Update])>(0)),
    CONSTRAINT [SSMA_CC$Inventory$VendorID$disallow_zero_length] CHECK (len([VendorID])>(0)),
    CONSTRAINT [Inventory$VendorsInventory] FOREIGN KEY ([VendorID]) REFERENCES [crm].[Vendors] ([VendorID]) ON UPDATE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Inventory$ID]
    ON [crm].[Inventory]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Inventory$ItemID]
    ON [crm].[Inventory]([ItemID] ASC);


GO
CREATE NONCLUSTERED INDEX [Inventory$Supplier]
    ON [crm].[Inventory]([Supplier] ASC);


GO
CREATE NONCLUSTERED INDEX [Inventory$SystemID]
    ON [crm].[Inventory]([SystemCode] ASC);


GO
CREATE NONCLUSTERED INDEX [Inventory$VendorID]
    ON [crm].[Inventory]([VendorID] ASC);


GO
CREATE NONCLUSTERED INDEX [Inventory$VendorsInventory]
    ON [crm].[Inventory]([VendorID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[ItemID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Supplier]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$Supplier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[SystemID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$SystemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[VendorID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$VendorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[VendorsInventory]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'INDEX', @level2name = N'Inventory$VendorsInventory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Bin Location]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Bin Location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[ItemID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Yes = Track item with serial numbers in tracker.', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Tracked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Tracked]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Tracked';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Micromedical System number -- this is the broad category.. these items show up in quotes', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'SystemCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[SystemCode]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'SystemCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Supplier]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Supplier';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Supplier Acct #]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Supplier Acct #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Supplier Contact Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Supplier Contact Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[VendorID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'VendorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Supplier Part Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Supplier Part Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[On Hand]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'On Hand';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Retail]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Retail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Extended]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Extended';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Manufacturer Part Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Manufacturer Part Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Measure]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Measure';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Cost]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Cost';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[On Order]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'On Order';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Backordered]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Backordered';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Manufacturer]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Manufacturer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Update]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Update';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Quantity to Order]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Quantity to Order';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Stock Level]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Stock Level';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Qty changes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Qty changes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Notes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Define if its a Kit or Product or Labor etc', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Product Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Product Type]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Product Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Show on order form]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Show on order form';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Department]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Prior Order Quantity]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Prior Order Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Ordering notes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Ordering notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[PO extended Amt]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'PO extended Amt';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[PO Order Qty]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'PO Order Qty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Ship Via]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Ship Via';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Reference]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Reference';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Ship Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Ship Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[PO Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'PO Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[PO Total]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'PO Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Last Order Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Last Order Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[Last Order Quantity]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'Last Order Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in fraction of work hours; for kits; this includes assembly time for subkits and deliverytime for out of stock parts', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'AssemblyTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[AssemblyTime]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'AssemblyTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in fraction of work days; for parts', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'DeliveryTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[DeliveryTime]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'DeliveryTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in fraction of work days; for parts', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'BackorderTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[BackorderTime]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'COLUMN', @level2name = N'BackorderTime';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'CONSTRAINT', @level2name = N'Inventory$PrimaryKey';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Inventory].[VendorsInventory]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Inventory', @level2type = N'CONSTRAINT', @level2name = N'Inventory$VendorsInventory';

