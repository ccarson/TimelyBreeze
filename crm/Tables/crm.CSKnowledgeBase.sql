CREATE TABLE [crm].[CSKnowledgeBase] (
    [ID]              INT            IDENTITY (1, 1) NOT NULL,
    [KBID]            INT            DEFAULT ((0)) NOT NULL,
    [Title]           NVARCHAR (100) NULL,
    [Issue]           NVARCHAR (MAX) NULL,
    [Description]     NVARCHAR (MAX) NULL,
    [Solution]        NVARCHAR (MAX) NULL,
    [RelatedArticles] NVARCHAR (50)  NULL,
    [ProductCategory] NVARCHAR (50)  NULL,
    [Keywords]        NVARCHAR (255) NULL,
    [AppliesTo]       NVARCHAR (100) NULL,
    [Document]        NVARCHAR (MAX) NULL,
    [Published]       DATETIME2 (0)  NULL,
    [LastModified]    DATETIME2 (0)  NULL,
    [SSMA_TimeStamp]  ROWVERSION     NOT NULL,
    CONSTRAINT [CSKnowledgeBase$PrimaryKey] PRIMARY KEY CLUSTERED ([KBID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CSKnowledgeBase$ID]
    ON [crm].[CSKnowledgeBase]([ID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [CSKnowledgeBase$KBID]
    ON [crm].[CSKnowledgeBase]([KBID] ASC);


GO
CREATE NONCLUSTERED INDEX [CSKnowledgeBase$Keywords]
    ON [crm].[CSKnowledgeBase]([Keywords] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'INDEX', @level2name = N'CSKnowledgeBase$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[KBID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'INDEX', @level2name = N'CSKnowledgeBase$KBID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[Keywords]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'INDEX', @level2name = N'CSKnowledgeBase$Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[KBID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'KBID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[Title]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[Issue]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'Issue';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[Solution]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'Solution';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[RelatedArticles]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'RelatedArticles';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[ProductCategory]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[Keywords]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[AppliesTo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'AppliesTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[Document]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'Document';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[Published]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'Published';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[LastModified]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'COLUMN', @level2name = N'LastModified';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CSKnowledgeBase].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CSKnowledgeBase', @level2type = N'CONSTRAINT', @level2name = N'CSKnowledgeBase$PrimaryKey';

