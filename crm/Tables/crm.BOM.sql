CREATE TABLE [crm].[BOM] (
    [BOMID]          INT           IDENTITY (1, 1) NOT NULL,
    [ItemID]         NVARCHAR (50) NULL,
    [CompID]         NVARCHAR (50) NULL,
    [Quantity]       REAL          DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION    NOT NULL,
    CONSTRAINT [BOM$PrimaryKey] PRIMARY KEY CLUSTERED ([BOMID] ASC),
    CONSTRAINT [SSMA_CC$BOM$CompID$disallow_zero_length] CHECK (len([CompID])>(0)),
    CONSTRAINT [SSMA_CC$BOM$ItemID$disallow_zero_length] CHECK (len([ItemID])>(0)),
    CONSTRAINT [BOM$InventoryBOM] FOREIGN KEY ([ItemID]) REFERENCES [crm].[Inventory] ([ItemID]) ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [BOM$BOMID]
    ON [crm].[BOM]([ItemID] ASC);


GO
CREATE NONCLUSTERED INDEX [BOM$BOMID1]
    ON [crm].[BOM]([BOMID] ASC);


GO
CREATE NONCLUSTERED INDEX [BOM$CompID]
    ON [crm].[BOM]([CompID] ASC);


GO
CREATE NONCLUSTERED INDEX [BOM$InventoryBOM]
    ON [crm].[BOM]([ItemID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[BOMID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'INDEX', @level2name = N'BOM$BOMID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[BOMID1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'INDEX', @level2name = N'BOM$BOMID1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[CompID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'INDEX', @level2name = N'BOM$CompID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[InventoryBOM]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'INDEX', @level2name = N'BOM$InventoryBOM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[BOMID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'COLUMN', @level2name = N'BOMID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ItemID of the kit from Inventory', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'COLUMN', @level2name = N'ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[ItemID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'COLUMN', @level2name = N'ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'ItemID of the part from Inventory', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'COLUMN', @level2name = N'CompID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[CompID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'COLUMN', @level2name = N'CompID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[Quantity]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'COLUMN', @level2name = N'Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[InventoryBOM]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'CONSTRAINT', @level2name = N'BOM$InventoryBOM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[BOM].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'BOM', @level2type = N'CONSTRAINT', @level2name = N'BOM$PrimaryKey';

