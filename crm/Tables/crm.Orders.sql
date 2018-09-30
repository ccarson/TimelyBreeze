CREATE TABLE [crm].[Orders] (
    [ID]              INT            IDENTITY (1, 1) NOT NULL,
    [OrderID]         NVARCHAR (50)  NULL,
    [QuoteID]         NVARCHAR (20)  NULL,
    [OppID]           NVARCHAR (20)  NULL,
    [ItemSystemCode]  NVARCHAR (50)  NULL,
    [ItemDescription] NVARCHAR (MAX) NULL,
    [ItemExtPrice]    MONEY          DEFAULT ((0)) NULL,
    [ItemQuantity]    INT            DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]  ROWVERSION     NOT NULL,
    CONSTRAINT [Orders$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$Orders$ItemDescription$disallow_zero_length] CHECK (len([ItemDescription])>(0)),
    CONSTRAINT [SSMA_CC$Orders$ItemSystemCode$disallow_zero_length] CHECK (len([ItemSystemCode])>(0)),
    CONSTRAINT [SSMA_CC$Orders$OppID$disallow_zero_length] CHECK (len([OppID])>(0)),
    CONSTRAINT [SSMA_CC$Orders$OrderID$disallow_zero_length] CHECK (len([OrderID])>(0)),
    CONSTRAINT [SSMA_CC$Orders$QuoteID$disallow_zero_length] CHECK (len([QuoteID])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Orders$OppID]
    ON [crm].[Orders]([OppID] ASC);


GO
CREATE NONCLUSTERED INDEX [Orders$OrderID]
    ON [crm].[Orders]([OrderID] ASC);


GO
CREATE NONCLUSTERED INDEX [Orders$QuoteID]
    ON [crm].[Orders]([QuoteID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[OppID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'INDEX', @level2name = N'Orders$OppID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[OrderID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'INDEX', @level2name = N'Orders$OrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[QuoteID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'INDEX', @level2name = N'Orders$QuoteID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[OrderID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'COLUMN', @level2name = N'OrderID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[QuoteID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'COLUMN', @level2name = N'QuoteID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[OppID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'COLUMN', @level2name = N'OppID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[ItemSystemCode]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'COLUMN', @level2name = N'ItemSystemCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[ItemDescription]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'COLUMN', @level2name = N'ItemDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[ItemExtPrice]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'COLUMN', @level2name = N'ItemExtPrice';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[ItemQuantity]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'COLUMN', @level2name = N'ItemQuantity';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Orders].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Orders', @level2type = N'CONSTRAINT', @level2name = N'Orders$PrimaryKey';

