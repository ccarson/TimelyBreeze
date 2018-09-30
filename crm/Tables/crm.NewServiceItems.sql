CREATE TABLE [crm].[NewServiceItems] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [ServiceID]      NVARCHAR (20)  NOT NULL,
    [ItemNumber]     SMALLINT       DEFAULT ((0)) NULL,
    [Description]    NVARCHAR (100) NULL,
    [ShippedDate]    DATETIME2 (0)  NULL,
    [SerialNo]       NVARCHAR (50)  NULL,
    [Unit Price]     MONEY          DEFAULT ((0)) NULL,
    [Quantity]       SMALLINT       DEFAULT ((1)) NULL,
    [Net Price]      MONEY          DEFAULT ((0)) NULL,
    [Loaner]         BIT            DEFAULT ((0)) NULL,
    [LoanerReturned] BIT            DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [NewServiceItems$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$NewServiceItems$ServiceID$disallow_zero_length] CHECK (len([ServiceID])>(0))
);


GO
CREATE NONCLUSTERED INDEX [NewServiceItems$ID]
    ON [crm].[NewServiceItems]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [NewServiceItems$ServiceID]
    ON [crm].[NewServiceItems]([ServiceID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'INDEX', @level2name = N'NewServiceItems$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[ServiceID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'INDEX', @level2name = N'NewServiceItems$ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'links to customer''s service record', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[ServiceID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[ItemNumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'ItemNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[ShippedDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'ShippedDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[SerialNo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'SerialNo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[Unit Price]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'Unit Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[Quantity]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'Quantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[Net Price]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'Net Price';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[Loaner]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'Loaner';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[LoanerReturned]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'COLUMN', @level2name = N'LoanerReturned';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[NewServiceItems].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'NewServiceItems', @level2type = N'CONSTRAINT', @level2name = N'NewServiceItems$PrimaryKey';

