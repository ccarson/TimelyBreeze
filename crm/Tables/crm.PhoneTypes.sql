CREATE TABLE [crm].[PhoneTypes] (
    [PhoneTypesID] INT           IDENTITY (1, 1) NOT NULL,
    [Phone Type]   NVARCHAR (10) NULL,
    CONSTRAINT [PhoneTypes$PrimaryKey] PRIMARY KEY CLUSTERED ([PhoneTypesID] ASC),
    CONSTRAINT [SSMA_CC$PhoneTypes$Phone Type$disallow_zero_length] CHECK (len([Phone Type])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PhoneTypes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PhoneTypes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PhoneTypes].[PhoneTypesID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PhoneTypes', @level2type = N'COLUMN', @level2name = N'PhoneTypesID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PhoneTypes].[Phone Type]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PhoneTypes', @level2type = N'COLUMN', @level2name = N'Phone Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PhoneTypes].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PhoneTypes', @level2type = N'CONSTRAINT', @level2name = N'PhoneTypes$PrimaryKey';

