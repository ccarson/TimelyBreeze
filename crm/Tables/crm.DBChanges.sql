CREATE TABLE [crm].[DBChanges] (
    [ID]                        INT            IDENTITY (1, 1) NOT NULL,
    [InputBy]                   NVARCHAR (50)  NULL,
    [InputDescription]          NVARCHAR (MAX) NULL,
    [InputDate]                 DATETIME2 (0)  NULL,
    [InputVersion]              NVARCHAR (10)  NULL,
    [ImplementedBy]             NVARCHAR (50)  NULL,
    [ImplementedOn]             DATETIME2 (0)  NULL,
    [ImplementedVersion]        NVARCHAR (10)  NULL,
    [ImplementationDescription] NVARCHAR (MAX) NULL,
    [Implemented]               BIT            DEFAULT ((0)) NULL,
    [Rejected]                  BIT            DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]            ROWVERSION     NOT NULL,
    CONSTRAINT [DBChanges$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DBChanges$ID]
    ON [crm].[DBChanges]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'INDEX', @level2name = N'DBChanges$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[InputBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'InputBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[InputDescription]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'InputDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[InputDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'InputDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[InputVersion]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'InputVersion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[ImplementedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'ImplementedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[ImplementedOn]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'ImplementedOn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[ImplementedVersion]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'ImplementedVersion';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[ImplementationDescription]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'ImplementationDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[Implemented]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'Implemented';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[Rejected]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'COLUMN', @level2name = N'Rejected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[DBChanges].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'DBChanges', @level2type = N'CONSTRAINT', @level2name = N'DBChanges$PrimaryKey';

