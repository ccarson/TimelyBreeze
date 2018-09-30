CREATE TABLE [crm].[Communications] (
    [ID]                INT            IDENTITY (1, 1) NOT NULL,
    [CommID]            NVARCHAR (20)  NOT NULL,
    [OppID]             NVARCHAR (20)  NULL,
    [ContactID]         NVARCHAR (20)  NULL,
    [CompanyID]         NVARCHAR (20)  NOT NULL,
    [Source]            NVARCHAR (20)  NULL,
    [Type]              NVARCHAR (50)  NULL,
    [Subject]           NVARCHAR (255) NULL,
    [Date]              DATETIME2 (0)  NULL,
    [Next Contact Date] DATETIME2 (0)  NULL,
    [Memo]              NVARCHAR (MAX) NULL,
    [AttachType]        NVARCHAR (20)  NULL,
    [AttachLink]        NVARCHAR (MAX) NULL,
    [SSMA_TimeStamp]    ROWVERSION     NOT NULL,
    CONSTRAINT [Communications$PrimaryKey] PRIMARY KEY CLUSTERED ([CommID] ASC),
    CONSTRAINT [SSMA_CC$Communications$CommID$disallow_zero_length] CHECK (len([CommID])>(0)),
    CONSTRAINT [SSMA_CC$Communications$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Communications$OppID$disallow_zero_length] CHECK (len([OppID])>(0)),
    CONSTRAINT [Communications$ContactsCommunications] FOREIGN KEY ([ContactID]) REFERENCES [crm].[Contacts] ([ContactID]),
    CONSTRAINT [Communications$OpportunitiesCommunications] FOREIGN KEY ([OppID]) REFERENCES [crm].[Opportunities] ([OppID])
);


GO
CREATE NONCLUSTERED INDEX [Communications$CommID]
    ON [crm].[Communications]([CommID] ASC);


GO
CREATE NONCLUSTERED INDEX [Communications$ContactsCommunications]
    ON [crm].[Communications]([ContactID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Communications$ID]
    ON [crm].[Communications]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Communications$OpportunitiesCommunications]
    ON [crm].[Communications]([OppID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[CommID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'INDEX', @level2name = N'Communications$CommID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[ContactsCommunications]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'INDEX', @level2name = N'Communications$ContactsCommunications';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'INDEX', @level2name = N'Communications$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[OpportunitiesCommunications]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'INDEX', @level2name = N'Communications$OpportunitiesCommunications';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[CommID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'CommID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[OppID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'OppID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This could be linked to the Contacts table using ContactID', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'who initiated the conversation', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Source';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[Source]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Source';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Quote, cold call, enquiry', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[Type]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[Subject]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Subject';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[Next Contact Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Next Contact Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'detailed.. either email text or conversation summary', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Memo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[Memo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'Memo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Email, Quote file, audio file', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'AttachType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[AttachType]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'AttachType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'could be QuoteIDLink', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'AttachLink';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[AttachLink]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'COLUMN', @level2name = N'AttachLink';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[ContactsCommunications]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'CONSTRAINT', @level2name = N'Communications$ContactsCommunications';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[OpportunitiesCommunications]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'CONSTRAINT', @level2name = N'Communications$OpportunitiesCommunications';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Communications].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Communications', @level2type = N'CONSTRAINT', @level2name = N'Communications$PrimaryKey';

