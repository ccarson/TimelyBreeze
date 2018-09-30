CREATE TABLE [crm].[CS_TYPE] (
    [ID]                    INT           IDENTITY (1, 1) NOT NULL,
    [Customer Sercive Type] NVARCHAR (16) NULL,
    CONSTRAINT [SSMA_CC$CS_TYPE$Customer Sercive Type$disallow_zero_length] CHECK (len([Customer Sercive Type])>(0))
);


GO
CREATE NONCLUSTERED INDEX [CS_TYPE$ID]
    ON [crm].[CS_TYPE]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CS_TYPE].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CS_TYPE', @level2type = N'INDEX', @level2name = N'CS_TYPE$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CS_TYPE]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CS_TYPE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CS_TYPE].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CS_TYPE', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CS_TYPE].[Customer Sercive Type]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CS_TYPE', @level2type = N'COLUMN', @level2name = N'Customer Sercive Type';

