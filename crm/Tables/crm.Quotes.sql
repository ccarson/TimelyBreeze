CREATE TABLE [crm].[Quotes] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [QuoteID]        NVARCHAR (20)  NULL,
    [OppID]          NVARCHAR (20)  NULL,
    [Source]         NVARCHAR (20)  NULL,
    [CompanyID]      NVARCHAR (20)  NULL,
    [ContactID]      NVARCHAR (20)  NULL,
    [Date]           DATETIME2 (0)  NULL,
    [QuoteLink]      NVARCHAR (MAX) NULL,
    [Status]         NVARCHAR (10)  NULL,
    [Temp1]          NVARCHAR (50)  NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [Quotes$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$Quotes$OppID$disallow_zero_length] CHECK (len([OppID])>(0)),
    CONSTRAINT [SSMA_CC$Quotes$QuoteID$disallow_zero_length] CHECK (len([QuoteID])>(0)),
    CONSTRAINT [Quotes$OpportunitiesQuotes] FOREIGN KEY ([OppID]) REFERENCES [crm].[Opportunities] ([OppID]) ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [Quotes$ContactID]
    ON [crm].[Quotes]([ContactID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Quotes$ID]
    ON [crm].[Quotes]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Quotes$OppID]
    ON [crm].[Quotes]([OppID] ASC);


GO
CREATE NONCLUSTERED INDEX [Quotes$OpportunitiesQuotes]
    ON [crm].[Quotes]([OppID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Quotes$QuoteID]
    ON [crm].[Quotes]([QuoteID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'INDEX', @level2name = N'Quotes$ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'INDEX', @level2name = N'Quotes$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[OppID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'INDEX', @level2name = N'Quotes$OppID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[OpportunitiesQuotes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'INDEX', @level2name = N'Quotes$OpportunitiesQuotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[QuoteID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'INDEX', @level2name = N'Quotes$QuoteID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[QuoteID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'QuoteID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[OppID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'OppID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[Source]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'Source';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[QuoteLink]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'QuoteLink';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[Temp1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'COLUMN', @level2name = N'Temp1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[OpportunitiesQuotes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'CONSTRAINT', @level2name = N'Quotes$OpportunitiesQuotes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Quotes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Quotes', @level2type = N'CONSTRAINT', @level2name = N'Quotes$PrimaryKey';

