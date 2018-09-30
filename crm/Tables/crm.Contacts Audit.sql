CREATE TABLE [crm].[Contacts Audit] (
    [ID]                   INT            IDENTITY (1, 1) NOT NULL,
    [ContactID]            NVARCHAR (20)  NOT NULL,
    [ModifiedBy]           NVARCHAR (20)  NOT NULL,
    [ModifiedOn]           DATETIME2 (0)  NULL,
    [CompanyID]            NVARCHAR (20)  NOT NULL,
    [Prefix]               NVARCHAR (5)   NULL,
    [Firstname]            NVARCHAR (20)  NULL,
    [Lastname]             NVARCHAR (20)  NULL,
    [Postfix]              NVARCHAR (15)  NULL,
    [Address1]             NVARCHAR (35)  NULL,
    [Address2]             NVARCHAR (35)  NULL,
    [City]                 NVARCHAR (20)  NULL,
    [State]                NVARCHAR (4)   NULL,
    [Zip]                  NVARCHAR (11)  NULL,
    [Country]              NVARCHAR (13)  NULL,
    [Primary]              BIT            DEFAULT ((0)) NULL,
    [Telephone1]           NVARCHAR (19)  NULL,
    [PhoneType1]           INT            NULL,
    [Telephone2]           NVARCHAR (19)  NULL,
    [PhoneType2]           INT            NULL,
    [Telephone3]           NVARCHAR (19)  NULL,
    [PhoneType3]           INT            NULL,
    [EMail]                NVARCHAR (50)  NULL,
    [Personal Comment]     NVARCHAR (255) NULL,
    [Status]               NVARCHAR (20)  NULL,
    [Territory Number]     SMALLINT       DEFAULT ((0)) NULL,
    [CompanyID_New]        NVARCHAR (20)  NOT NULL,
    [Prefix_New]           NVARCHAR (5)   NULL,
    [Firstname_New]        NVARCHAR (20)  NULL,
    [Lastname_New]         NVARCHAR (20)  NULL,
    [Postfix_New]          NVARCHAR (15)  NULL,
    [Address1_New]         NVARCHAR (35)  NULL,
    [Address2_New]         NVARCHAR (35)  NULL,
    [City_New]             NVARCHAR (20)  NULL,
    [State_New]            NVARCHAR (4)   NULL,
    [Zip_New]              NVARCHAR (11)  NULL,
    [Country_New]          NVARCHAR (13)  NULL,
    [Primary_New]          BIT            DEFAULT ((0)) NULL,
    [Telephone1_New]       NVARCHAR (19)  NULL,
    [PhoneType1_New]       INT            NULL,
    [Telephone2_New]       NVARCHAR (19)  NULL,
    [PhoneType2_New]       INT            NULL,
    [Telephone3_New]       NVARCHAR (19)  NULL,
    [PhoneType3_New]       INT            NULL,
    [EMail_New]            NVARCHAR (50)  NULL,
    [Personal Comment_New] NVARCHAR (255) NULL,
    [Status_New]           NVARCHAR (20)  NULL,
    [Territory Number_New] SMALLINT       DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]       ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$Contacts Audit$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Contacts Audit$CompanyID_New$disallow_zero_length] CHECK (len([CompanyID_New])>(0)),
    CONSTRAINT [SSMA_CC$Contacts Audit$ContactID$disallow_zero_length] CHECK (len([ContactID])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Contacts Audit$CompanyID]
    ON [crm].[Contacts Audit]([CompanyID] ASC);


GO
CREATE NONCLUSTERED INDEX [Contacts Audit$ContactID]
    ON [crm].[Contacts Audit]([ContactID] ASC);


GO
CREATE NONCLUSTERED INDEX [Contacts Audit$ID]
    ON [crm].[Contacts Audit]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'INDEX', @level2name = N'Contacts Audit$CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'INDEX', @level2name = N'Contacts Audit$ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'INDEX', @level2name = N'Contacts Audit$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This can be used in future for more contact management..', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[ModifiedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'ModifiedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[ModifiedOn]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'ModifiedOn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Prefix]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Prefix';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Firstname]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Lastname]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Postfix]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Postfix';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'can have multiple primarys... can be used in queries to send one per company.', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Primary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Primary]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Primary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Telephone1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Telephone1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[PhoneType1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'PhoneType1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Telephone2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Telephone2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[PhoneType2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'PhoneType2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Telephone3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Telephone3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[PhoneType3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'PhoneType3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[EMail]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'EMail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Personal Comment]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Personal Comment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'contact status .. customer, lead, dealer, etc', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Territory Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Territory Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[CompanyID_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'CompanyID_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Prefix_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Prefix_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Firstname_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Firstname_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Lastname_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Lastname_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Postfix_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Postfix_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Address1_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Address1_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Address2_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Address2_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[City_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'City_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[State_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'State_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Zip_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Zip_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Country_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Country_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'can have multiple primarys... can be used in queries to send one per company.', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Primary_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Primary_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Primary_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Telephone1_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Telephone1_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[PhoneType1_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'PhoneType1_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Telephone2_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Telephone2_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[PhoneType2_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'PhoneType2_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Telephone3_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Telephone3_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[PhoneType3_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'PhoneType3_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[EMail_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'EMail_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Personal Comment_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Personal Comment_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'contact status .. customer, lead, dealer, etc', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Status_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Status_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Status_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Contacts Audit].[Territory Number_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Contacts Audit', @level2type = N'COLUMN', @level2name = N'Territory Number_New';

