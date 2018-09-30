CREATE TABLE [crm].[Contacts] (
    [ID]               INT            IDENTITY (1, 1) NOT NULL,
    [ContactID]        NVARCHAR (20)  NOT NULL,
    [CompanyID]        NVARCHAR (20)  NOT NULL,
    [Prefix]           NVARCHAR (5)   NULL,
    [Firstname]        NVARCHAR (20)  NULL,
    [Lastname]         NVARCHAR (20)  NULL,
    [Postfix]          NVARCHAR (15)  NULL,
    [Address1]         NVARCHAR (35)  NULL,
    [Address2]         NVARCHAR (35)  NULL,
    [City]             NVARCHAR (20)  NULL,
    [State]            NVARCHAR (4)   NULL,
    [Zip]              NVARCHAR (11)  NULL,
    [Country]          NVARCHAR (13)  NULL,
    [Primary]          BIT            DEFAULT ((0)) NULL,
    [Telephone1]       NVARCHAR (19)  NULL,
    [PhoneType1]       INT            NULL,
    [Telephone2]       NVARCHAR (19)  NULL,
    [PhoneType2]       INT            NULL,
    [Telephone3]       NVARCHAR (19)  NULL,
    [PhoneType3]       INT            NULL,
    [EMail]            NVARCHAR (50)  NULL,
    [Personal Comment] NVARCHAR (255) NULL,
    [Status]           NVARCHAR (20)  NULL,
    [Territory Number] SMALLINT       DEFAULT ((0)) NULL,
    [Speciality]       NVARCHAR (30)  NULL,
    [SSMA_TimeStamp]   ROWVERSION     NOT NULL,
    CONSTRAINT [Contacts$PrimaryKey] PRIMARY KEY CLUSTERED ([ContactID] ASC),
    CONSTRAINT [SSMA_CC$Contacts$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Contacts$ContactID$disallow_zero_length] CHECK (len([ContactID])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Contacts$ID]
    ON [crm].[Contacts]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'INDEX', @level2name = N'Contacts$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This can be used in future for more contact management..', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Prefix]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Prefix';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Firstname]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Lastname]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Postfix]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Postfix';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'can have multiple primarys... can be used in queries to send one per company.', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Primary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Primary]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Primary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Telephone1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Telephone1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[PhoneType1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'PhoneType1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Telephone2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Telephone2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[PhoneType2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'PhoneType2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Telephone3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Telephone3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[PhoneType3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'PhoneType3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[EMail]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'EMail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Personal Comment]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Personal Comment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'contact status .. customer, lead, dealer, etc', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Territory Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Territory Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[Speciality]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'COLUMN', @level2name = N'Speciality';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts', @level2type = N'CONSTRAINT', @level2name = N'Contacts$PrimaryKey';

