CREATE TABLE [crm].[Tracker] (
    [TrackerID]         INT            IDENTITY (1, 1) NOT NULL,
    [ItemID]            NVARCHAR (50)  NULL,
    [SystemCode]        NVARCHAR (50)  NULL,
    [CompanyID]         NVARCHAR (16)  NULL,
    [SystemSerial]      NVARCHAR (50)  NULL,
    [Product Type]      NVARCHAR (10)  NULL,
    [Category]          NVARCHAR (30)  NULL,
    [Department]        NVARCHAR (50)  NULL,
    [Description]       NVARCHAR (50)  NULL,
    [SerialNumber]      NVARCHAR (30)  NULL,
    [PONumber]          NVARCHAR (20)  NULL,
    [DateReceived]      DATETIME2 (0)  NULL,
    [Location]          NVARCHAR (50)  NULL,
    [System Status]     NVARCHAR (10)  NULL,
    [SystemName]        NVARCHAR (75)  NULL,
    [Software Version]  NVARCHAR (100) NULL,
    [Purchase Date]     DATETIME2 (0)  NULL,
    [Delivery Date]     DATETIME2 (0)  NULL,
    [Payment ($)]       MONEY          NULL,
    [System Warranty]   NVARCHAR (50)  NULL,
    [Software Warranty] DATETIME2 (0)  NULL,
    [PC Warranty]       DATETIME2 (0)  NULL,
    [Comment]           NVARCHAR (MAX) NULL,
    [Distributor]       NVARCHAR (50)  NULL,
    [Commission]        MONEY          NULL,
    [Territory Num]     SMALLINT       DEFAULT ((0)) NULL,
    [Commission Date]   DATETIME2 (0)  NULL,
    [Model-Rev]         NVARCHAR (25)  NULL,
    [SSMA_TimeStamp]    ROWVERSION     NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [Tracker$TrackerID]
    ON [crm].[Tracker]([TrackerID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[TrackerID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'INDEX', @level2name = N'Tracker$TrackerID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[TrackerID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'TrackerID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Links to Inventory -- this', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[ItemID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'ItemID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Since and ItemID can be used in multiple system types we need to know what SystemCode this Item belongs to', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'SystemCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[SystemCode]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'SystemCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Allows Grouping by System Serial number - unique number assigned by MMT', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'SystemSerial';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[SystemSerial]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'SystemSerial';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Define if its a Kit or Part of kit', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Product Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Product Type]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Product Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Computer, Printer etc', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Category';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Category]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Category';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'copied from Inventory for further categorization', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Department]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Item''s serial number', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'SerialNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[SerialNumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'SerialNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[PONumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'PONumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'by MMT - for subcomponents', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[DateReceived]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'DateReceived';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'for legacy.. Item should be linked to CompanyID anyway', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Location]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer, Contact etc', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'System Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[System Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'System Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[SystemName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'SystemName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Software Version]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Software Version';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'by customer', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Purchase Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Purchase Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Purchase Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to customer', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Delivery Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Delivery Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Delivery Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Payment ($)]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Payment ($)';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'convert to date/time might need translation (2 years, life time etc)', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'System Warranty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[System Warranty]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'System Warranty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Software Warranty]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Software Warranty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[PC Warranty]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'PC Warranty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Comment]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Comment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Distributor]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Distributor';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Commission]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Commission';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Territory Num]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Territory Num';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Commission Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Commission Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tracker].[Model-Rev]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tracker', @level2type = N'COLUMN', @level2name = N'Model-Rev';

