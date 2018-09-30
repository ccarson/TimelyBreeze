CREATE TABLE [crm].[Companys Audit] (
    [ID]                 INT            IDENTITY (1, 1) NOT NULL,
    [CompanyID]          NVARCHAR (20)  NULL,
    [CompanyName]        NVARCHAR (50)  NULL,
    [Status]             NVARCHAR (20)  NULL,
    [Comment]            NVARCHAR (MAX) NULL,
    [Address1]           NVARCHAR (35)  NULL,
    [Address2]           NVARCHAR (35)  NULL,
    [City]               NVARCHAR (20)  NULL,
    [State]              NVARCHAR (4)   NULL,
    [Zip]                NVARCHAR (11)  NULL,
    [Country]            NVARCHAR (13)  NULL,
    [Telephone1]         NVARCHAR (19)  NULL,
    [PhoneType1]         INT            NULL,
    [Telephone2]         NVARCHAR (19)  NULL,
    [PhoneType2]         INT            NULL,
    [Website]            NVARCHAR (100) NULL,
    [Representative]     NVARCHAR (50)  NULL,
    [AccountStatus]      NVARCHAR (20)  NULL,
    [ModifiedBy]         NVARCHAR (20)  NOT NULL,
    [ModifiedOn]         DATETIME2 (0)  NULL,
    [CompanyID_New]      NVARCHAR (20)  NULL,
    [CompanyName_New]    NVARCHAR (50)  NULL,
    [Status_New]         NVARCHAR (20)  NULL,
    [Comment_New]        NVARCHAR (MAX) NULL,
    [Address1_New]       NVARCHAR (35)  NULL,
    [Address2_New]       NVARCHAR (35)  NULL,
    [City_New]           NVARCHAR (20)  NULL,
    [State_New]          NVARCHAR (4)   NULL,
    [Zip_New]            NVARCHAR (11)  NULL,
    [Country_New]        NVARCHAR (13)  NULL,
    [Telephone1_New]     NVARCHAR (19)  NULL,
    [Telephone2_New]     NVARCHAR (19)  NULL,
    [Website_New]        NVARCHAR (100) NULL,
    [Representative_New] NVARCHAR (50)  NULL,
    [AccountStatus_New]  NVARCHAR (20)  NULL,
    [OtherAddress_New]   NVARCHAR (50)  NULL,
    [SSMA_TimeStamp]     ROWVERSION     NOT NULL
);


GO
CREATE NONCLUSTERED INDEX [Companys Audit$ID]
    ON [crm].[Companys Audit]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'INDEX', @level2name = N'Companys Audit$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[CompanyName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'CompanyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer or Lead or Rep or Business', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Comment]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Comment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Telephone1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Telephone1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[PhoneType1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'PhoneType1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Telephone2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Telephone2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[PhoneType2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'PhoneType2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Website]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Website';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Representative]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Representative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer or Lead or Rep or Business', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'AccountStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[AccountStatus]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'AccountStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[ModifiedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'ModifiedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[ModifiedOn]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'ModifiedOn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[CompanyID_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'CompanyID_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[CompanyName_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'CompanyName_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer or Lead or Rep or Business', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Status_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Status_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Status_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Comment_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Comment_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Address1_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Address1_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Address2_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Address2_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[City_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'City_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[State_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'State_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Zip_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Zip_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Country_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Country_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Telephone1_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Telephone1_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Telephone2_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Telephone2_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Website_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Website_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[Representative_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'Representative_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer or Lead or Rep or Business', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'AccountStatus_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[AccountStatus_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'AccountStatus_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Note which other addresses (ship, bill, mail) were changed', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'OtherAddress_New';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys Audit].[OtherAddress_New]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys Audit', @level2type = N'COLUMN', @level2name = N'OtherAddress_New';

