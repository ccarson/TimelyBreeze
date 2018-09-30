CREATE TABLE [crm].[RMAItems] (
    [ID]               INT            IDENTITY (1, 1) NOT NULL,
    [RMANumber]        NVARCHAR (20)  NULL,
    [ServiceID]        NVARCHAR (20)  NULL,
    [ItemNumber]       SMALLINT       DEFAULT ((0)) NULL,
    [Received]         BIT            DEFAULT ((0)) NULL,
    [QuantityReceived] SMALLINT       DEFAULT ((0)) NULL,
    [ReceiveDate]      DATETIME2 (0)  NULL,
    [Condition]        NVARCHAR (50)  NULL,
    [Description]      NVARCHAR (100) NULL,
    [SerialNo]         NVARCHAR (50)  NULL,
    [Returned]         BIT            DEFAULT ((0)) NULL,
    [SerialNoReturned] NVARCHAR (50)  NULL,
    [Replaced]         BIT            DEFAULT ((0)) NULL,
    [QuantityReturned] SMALLINT       DEFAULT ((0)) NULL,
    [ReturnDate]       DATETIME2 (0)  NULL,
    [Unit Price]       MONEY          DEFAULT ((0)) NULL,
    [Quantity]         SMALLINT       DEFAULT ((1)) NULL,
    [Net Price]        MONEY          DEFAULT ((0)) NULL,
    [Loaner]           BIT            DEFAULT ((0)) NULL,
    [LoanerReturned]   BIT            DEFAULT ((0)) NULL,
    [ShippedDate]      DATETIME2 (0)  NULL,
    [ShippedSerialNo]  NVARCHAR (50)  NULL,
    [BinNumber]        NVARCHAR (10)  NULL,
    [Billable]         NVARCHAR (10)  NULL,
    [Warranty]         BIT            DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]   ROWVERSION     NOT NULL,
    CONSTRAINT [RMAItems$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [RMAItems$ID]
    ON [crm].[RMAItems]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [RMAItems$ServiceID]
    ON [crm].[RMAItems]([ServiceID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'INDEX', @level2name = N'RMAItems$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ServiceID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'INDEX', @level2name = N'RMAItems$ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[RMANumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'RMANumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'links to customer''s service record', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ServiceID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ItemNumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'ItemNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Received]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Received';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[QuantityReceived]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'QuantityReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ReceiveDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'ReceiveDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Condition]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Condition';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[SerialNo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'SerialNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Returned]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Returned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[SerialNoReturned]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'SerialNoReturned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Replaced]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Replaced';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[QuantityReturned]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'QuantityReturned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ReturnDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'ReturnDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Unit Price]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Unit Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Quantity]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Net Price]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Net Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Loaner]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Loaner';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[LoanerReturned]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'LoanerReturned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ShippedDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'ShippedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[ShippedSerialNo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'ShippedSerialNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[BinNumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'BinNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Billable]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Billable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[Warranty]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'COLUMN', @level2name = N'Warranty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[RMAItems].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'RMAItems', @level2type = N'CONSTRAINT', @level2name = N'RMAItems$PrimaryKey';

