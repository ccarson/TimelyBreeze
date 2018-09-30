CREATE TABLE [crm].[Opportunities] (
    [ID]                   INT            IDENTITY (1, 1) NOT NULL,
    [OppID]                NVARCHAR (20)  NOT NULL,
    [ContactID]            NVARCHAR (20)  NULL,
    [CompanyID]            NVARCHAR (20)  NOT NULL,
    [OppType]              NVARCHAR (15)  NULL,
    [Contact Code]         NVARCHAR (50)  NULL,
    [OppStatus]            NVARCHAR (15)  NULL,
    [Stage]                NVARCHAR (50)  NULL,
    [OppDescription]       NVARCHAR (MAX) NULL,
    [Product Of Interest]  NVARCHAR (255) NULL,
    [Last Contact Date]    DATETIME2 (0)  NULL,
    [Next Contact Date]    DATETIME2 (0)  NULL,
    [Date Of Projection]   DATETIME2 (0)  NULL,
    [Representative]       NVARCHAR (50)  NULL,
    [RepNum]               NVARCHAR (10)  NULL,
    [Estimated Value]      MONEY          NULL,
    [Estimated Order Date] DATETIME2 (0)  NULL,
    [Order Chance]         SMALLINT       NULL,
    [Projector]            NVARCHAR (20)  NULL,
    [Followup]             NVARCHAR (20)  NULL,
    [tmpQuoteLink]         NVARCHAR (MAX) NULL,
    [tmpCompany]           NVARCHAR (50)  NULL,
    [tmpQuote_Nr]          SMALLINT       DEFAULT ((0)) NULL,
    [tmpQuotedBy]          NVARCHAR (20)  NULL,
    [tmpIssuedTo]          NVARCHAR (50)  NULL,
    [tmpComment2]          NVARCHAR (255) NULL,
    [SSMA_TimeStamp]       ROWVERSION     NOT NULL,
    CONSTRAINT [Opportunities$PrimaryKey] PRIMARY KEY CLUSTERED ([OppID] ASC),
    CONSTRAINT [SSMA_CC$Opportunities$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Opportunities$OppID$disallow_zero_length] CHECK (len([OppID])>(0)),
    CONSTRAINT [SSMA_CC$Opportunities$OppType$disallow_zero_length] CHECK (len([OppType])>(0)),
    CONSTRAINT [Opportunities$ContactsOpportunities] FOREIGN KEY ([ContactID]) REFERENCES [crm].[Contacts] ([ContactID])
);


GO
CREATE NONCLUSTERED INDEX [Opportunities$ContactsOpportunities]
    ON [crm].[Opportunities]([ContactID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Opportunities$ID]
    ON [crm].[Opportunities]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[ContactsOpportunities]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'INDEX', @level2name = N'Opportunities$ContactsOpportunities';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'INDEX', @level2name = N'Opportunities$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[OppID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'OppID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Opportunity can be contact based or company based.. to start with they will be company based only', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'enter Quote for items imported from QuoteLog', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'OppType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[OppType]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'OppType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Contact Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Contact Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[OppStatus]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'OppStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1. Identification 2. Lead Qualified 3. Need Assesed 4. Demo 5. Quote 6. Refine Solution 7. Order in 8. Failed', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Stage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Stage]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Stage';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'can be transferred to Comment on Contact for the first CommID', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'OppDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[OppDescription]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'OppDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Product Of Interest]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Product Of Interest';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Last Contact Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Last Contact Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Next Contact Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Next Contact Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Date Of Projection]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Date Of Projection';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Representative]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Representative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[RepNum]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'RepNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Estimated Value]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Estimated Value';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Estimated Order Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Estimated Order Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Order Chance]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Order Chance';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Projector]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Projector';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[Followup]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'Followup';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'eventually transfer the QuoteLink to Communications table along with OppID', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpQuoteLink';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[tmpQuoteLink]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpQuoteLink';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'import company here.. then pull down a relational list to link this and populate CompanyID', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpCompany';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[tmpCompany]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpCompany';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'just get current number.. the prev and new numbers will get linked by Company name', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpQuote_Nr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[tmpQuote_Nr]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpQuote_Nr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[tmpQuotedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpQuotedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'merge into ContactID', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpIssuedTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[tmpIssuedTo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpIssuedTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[tmpComment2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'COLUMN', @level2name = N'tmpComment2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[ContactsOpportunities]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'CONSTRAINT', @level2name = N'Opportunities$ContactsOpportunities';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Opportunities].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Opportunities', @level2type = N'CONSTRAINT', @level2name = N'Opportunities$PrimaryKey';

