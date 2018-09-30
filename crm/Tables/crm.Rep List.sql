CREATE TABLE [crm].[Rep List] (
    [RepName] NVARCHAR (50) NULL,
    [RepNum]  SMALLINT      DEFAULT ((0)) NULL,
    CONSTRAINT [SSMA_CC$Rep List$RepName$disallow_zero_length] CHECK (len([RepName])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Rep List$RepNum]
    ON [crm].[Rep List]([RepNum] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Rep List].[RepNum]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Rep List', @level2type = N'INDEX', @level2name = N'Rep List$RepNum';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Rep List]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Rep List';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Rep List].[RepName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Rep List', @level2type = N'COLUMN', @level2name = N'RepName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Rep List].[RepNum]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Rep List', @level2type = N'COLUMN', @level2name = N'RepNum';

