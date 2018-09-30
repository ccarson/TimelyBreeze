CREATE TABLE [crm].[Vendors] (
    [VendorID]     NVARCHAR (20)  NOT NULL,
    [Name]         NVARCHAR (255) NULL,
    [Company Name] NVARCHAR (255) NULL,
    [Address1]     NVARCHAR (255) NULL,
    [Address2]     NVARCHAR (255) NULL,
    [City]         NVARCHAR (255) NULL,
    [State]        NVARCHAR (255) NULL,
    [Zip]          NVARCHAR (255) NULL,
    [Telephone]    NVARCHAR (255) NULL,
    [Fax]          NVARCHAR (255) NULL,
    [Field11]      NVARCHAR (255) NULL,
    CONSTRAINT [Vendors$PrimaryKey] PRIMARY KEY CLUSTERED ([VendorID] ASC),
    CONSTRAINT [SSMA_CC$Vendors$Address1$disallow_zero_length] CHECK (len([Address1])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$Address2$disallow_zero_length] CHECK (len([Address2])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$City$disallow_zero_length] CHECK (len([City])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$Company Name$disallow_zero_length] CHECK (len([Company Name])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$Fax$disallow_zero_length] CHECK (len([Fax])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$Field11$disallow_zero_length] CHECK (len([Field11])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$Name$disallow_zero_length] CHECK (len([Name])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$State$disallow_zero_length] CHECK (len([State])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$Telephone$disallow_zero_length] CHECK (len([Telephone])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$VendorID$disallow_zero_length] CHECK (len([VendorID])>(0)),
    CONSTRAINT [SSMA_CC$Vendors$Zip$disallow_zero_length] CHECK (len([Zip])>(0))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Vendors$Code]
    ON [crm].[Vendors]([VendorID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'INDEX', @level2name = N'Vendors$Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[VendorID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'VendorID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Company Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'Company Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Address1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'Address1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Address2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'Address2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Zip]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'Zip';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Telephone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'Telephone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Fax]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'Fax';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[Field11]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'COLUMN', @level2name = N'Field11';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Vendors].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Vendors', @level2type = N'CONSTRAINT', @level2name = N'Vendors$PrimaryKey';

