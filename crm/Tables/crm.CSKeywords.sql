CREATE TABLE [crm].[CSKeywords] (
    [ID]           SMALLINT      DEFAULT ((0)) NOT NULL,
    [Keyword]      NVARCHAR (50) NULL,
    [DisplayOrder] SMALLINT      DEFAULT ((0)) NULL,
    CONSTRAINT [CSKeywords$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CSKeywords$ID]
    ON [crm].[CSKeywords]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [CSKeywords$Keyword]
    ON [crm].[CSKeywords]([Keyword] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKeywords].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKeywords', @level2type = N'INDEX', @level2name = N'CSKeywords$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKeywords].[Keyword]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKeywords', @level2type = N'INDEX', @level2name = N'CSKeywords$Keyword';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKeywords]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKeywords';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKeywords].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKeywords', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKeywords].[Keyword]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKeywords', @level2type = N'COLUMN', @level2name = N'Keyword';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKeywords].[DisplayOrder]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKeywords', @level2type = N'COLUMN', @level2name = N'DisplayOrder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKeywords].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKeywords', @level2type = N'CONSTRAINT', @level2name = N'CSKeywords$PrimaryKey';

