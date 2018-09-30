CREATE TABLE [crm].[Business] (
    [Company_Name]   NVARCHAR (75)  NULL,
    [CompanyID]      NVARCHAR (16)  NULL,
    [Firstname]      NVARCHAR (20)  NULL,
    [Lastname]       NVARCHAR (20)  NULL,
    [Address1]       NVARCHAR (35)  NULL,
    [Address2]       NVARCHAR (35)  NULL,
    [City]           NVARCHAR (20)  NULL,
    [State]          NVARCHAR (4)   NULL,
    [Zip]            NVARCHAR (11)  NULL,
    [Country]        NVARCHAR (13)  NULL,
    [Telephone]      NVARCHAR (19)  NULL,
    [Fax]            NVARCHAR (19)  NULL,
    [e-mail]         NVARCHAR (50)  NULL,
    [Status]         NVARCHAR (100) NULL,
    [Products]       NVARCHAR (100) NULL,
    [Other Contacts] NVARCHAR (255) NULL,
    [Comment1]       NVARCHAR (MAX) NULL,
    [Comment2]       NVARCHAR (MAX) NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$Business$Address1$disallow_zero_length] CHECK (len([Address1])>(0)),
    CONSTRAINT [SSMA_CC$Business$Address2$disallow_zero_length] CHECK (len([Address2])>(0)),
    CONSTRAINT [SSMA_CC$Business$City$disallow_zero_length] CHECK (len([City])>(0)),
    CONSTRAINT [SSMA_CC$Business$Comment1$disallow_zero_length] CHECK (len([Comment1])>(0)),
    CONSTRAINT [SSMA_CC$Business$Comment2$disallow_zero_length] CHECK (len([Comment2])>(0)),
    CONSTRAINT [SSMA_CC$Business$Company_Name$disallow_zero_length] CHECK (len([Company_Name])>(0)),
    CONSTRAINT [SSMA_CC$Business$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Business$Country$disallow_zero_length] CHECK (len([Country])>(0)),
    CONSTRAINT [SSMA_CC$Business$e-mail$disallow_zero_length] CHECK (len([e-mail])>(0)),
    CONSTRAINT [SSMA_CC$Business$Fax$disallow_zero_length] CHECK (len([Fax])>(0)),
    CONSTRAINT [SSMA_CC$Business$Firstname$disallow_zero_length] CHECK (len([Firstname])>(0)),
    CONSTRAINT [SSMA_CC$Business$Lastname$disallow_zero_length] CHECK (len([Lastname])>(0)),
    CONSTRAINT [SSMA_CC$Business$Other Contacts$disallow_zero_length] CHECK (len([Other Contacts])>(0)),
    CONSTRAINT [SSMA_CC$Business$Products$disallow_zero_length] CHECK (len([Products])>(0)),
    CONSTRAINT [SSMA_CC$Business$State$disallow_zero_length] CHECK (len([State])>(0)),
    CONSTRAINT [SSMA_CC$Business$Status$disallow_zero_length] CHECK (len([Status])>(0)),
    CONSTRAINT [SSMA_CC$Business$Telephone$disallow_zero_length] CHECK (len([Telephone])>(0)),
    CONSTRAINT [SSMA_CC$Business$Zip$disallow_zero_length] CHECK (len([Zip])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Company_Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Company_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Firstname]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Firstname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Lastname]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Lastname';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Telephone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Telephone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Fax]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Fax';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[e-mail]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'e-mail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Products]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Products';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Other Contacts]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Other Contacts';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Comment1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Comment1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Business].[Comment2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Business', @level2type = N'COLUMN', @level2name = N'Comment2';

