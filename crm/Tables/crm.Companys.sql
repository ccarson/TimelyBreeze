CREATE TABLE [crm].[Companys] (
    [ID]             INT            IDENTITY (1, 1) NOT NULL,
    [CompanyID]      NVARCHAR (20)  NOT NULL,
    [CompanyName]    NVARCHAR (50)  NULL,
    [Status]         NVARCHAR (20)  NULL,
    [Comment]        NVARCHAR (MAX) NULL,
    [Address1]       NVARCHAR (35)  NULL,
    [Address2]       NVARCHAR (35)  NULL,
    [City]           NVARCHAR (20)  NULL,
    [State]          NVARCHAR (4)   NULL,
    [Zip]            NVARCHAR (11)  NULL,
    [Country]        NVARCHAR (13)  NULL,
    [Telephone1]     NVARCHAR (19)  NULL,
    [PhoneType1]     INT            NULL,
    [Telephone2]     NVARCHAR (19)  NULL,
    [PhoneType2]     INT            NULL,
    [Website]        NVARCHAR (100) NULL,
    [Representative] NVARCHAR (50)  NULL,
    [AccountStatus]  NVARCHAR (20)  NULL,
    [Ship_Address1]  NVARCHAR (35)  NULL,
    [Ship_Address2]  NVARCHAR (35)  NULL,
    [Ship_City]      NVARCHAR (20)  NULL,
    [Ship_State]     NVARCHAR (4)   NULL,
    [Ship_Zip]       NVARCHAR (11)  NULL,
    [Ship_Country]   NVARCHAR (13)  NULL,
    [Ship_Telephone] NVARCHAR (19)  NULL,
    [Ship_PhoneType] INT            NULL,
    [ShipDifferent]  BIT            DEFAULT ((0)) NULL,
    [Bill_Address1]  NVARCHAR (35)  NULL,
    [Bill_Address2]  NVARCHAR (35)  NULL,
    [Bill_City]      NVARCHAR (20)  NULL,
    [Bill_State]     NVARCHAR (4)   NULL,
    [Bill_Zip]       NVARCHAR (11)  NULL,
    [Bill_Country]   NVARCHAR (13)  NULL,
    [Bill_Telephone] NVARCHAR (19)  NULL,
    [Bill_PhoneType] INT            NULL,
    [BillDifferent]  BIT            DEFAULT ((0)) NULL,
    [Mail_Address1]  NVARCHAR (35)  NULL,
    [Mail_Address2]  NVARCHAR (35)  NULL,
    [Mail_City]      NVARCHAR (20)  NULL,
    [Mail_State]     NVARCHAR (4)   NULL,
    [Mail_Zip]       NVARCHAR (11)  NULL,
    [Mail_Country]   NVARCHAR (13)  NULL,
    [Mail_Telephone] NVARCHAR (19)  NULL,
    [Mail_PhoneType] INT            NULL,
    [MailDifferent]  BIT            DEFAULT ((0)) NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [Companys$PrimaryKey] PRIMARY KEY CLUSTERED ([CompanyID] ASC),
    CONSTRAINT [SSMA_CC$Companys$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Companys$CompanyName$disallow_zero_length] CHECK (len([CompanyName])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Companys$CompanyID]
    ON [crm].[Companys]([CompanyID] ASC);


GO
CREATE NONCLUSTERED INDEX [Companys$ID]
    ON [crm].[Companys]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'INDEX', @level2name = N'Companys$CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'INDEX', @level2name = N'Companys$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[CompanyName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'CompanyName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer or Lead or Rep or Business', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Comment]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Comment';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Telephone1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Telephone1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[PhoneType1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'PhoneType1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Telephone2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Telephone2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[PhoneType2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'PhoneType2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Website]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Website';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Representative]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Representative';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Customer or Lead or Rep or Business', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'AccountStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[AccountStatus]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'AccountStatus';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Ship_Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Ship_Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Ship_Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Ship_Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Ship_City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Ship_City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Ship_State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Ship_State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Ship_Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Ship_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Ship_Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Ship_Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Ship_Telephone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Ship_Telephone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Ship_PhoneType]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Ship_PhoneType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[ShipDifferent]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'ShipDifferent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Bill_Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Bill_Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Bill_Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Bill_Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Bill_City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Bill_City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Bill_State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Bill_State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Bill_Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Bill_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Bill_Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Bill_Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Bill_Telephone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Bill_Telephone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Bill_PhoneType]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Bill_PhoneType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[BillDifferent]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'BillDifferent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Mail_Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Mail_Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Mail_Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Mail_Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Mail_City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Mail_City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Mail_State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Mail_State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Mail_Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Mail_Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Mail_Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Mail_Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Mail_Telephone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Mail_Telephone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[Mail_PhoneType]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'Mail_PhoneType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[MailDifferent]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'COLUMN', @level2name = N'MailDifferent';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Companys].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Companys', @level2type = N'CONSTRAINT', @level2name = N'Companys$PrimaryKey';

