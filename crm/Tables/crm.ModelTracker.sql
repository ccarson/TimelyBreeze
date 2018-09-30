CREATE TABLE [crm].[ModelTracker] (
    [ComponentName]   NVARCHAR (50)  NULL,
    [Model-Rev]       NVARCHAR (25)  NOT NULL,
    [ChangeDate]      DATETIME2 (0)  NULL,
    [Description]     NVARCHAR (255) NULL,
    [Active]          BIT            DEFAULT ((0)) NULL,
    [RetiredDate]     DATETIME2 (0)  NULL,
    [MasterRecords]   NVARCHAR (MAX) NULL,
    [ShowInTracker]   BIT            DEFAULT ((0)) NULL,
    [ProductCategory] NVARCHAR (50)  NULL,
    [SSMA_TimeStamp]  ROWVERSION     NOT NULL,
    CONSTRAINT [ModelTracker$PrimaryKey] PRIMARY KEY CLUSTERED ([Model-Rev] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[ComponentName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'ComponentName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[Model-Rev]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'Model-Rev';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[ChangeDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'ChangeDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[Active]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'Active';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[RetiredDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'RetiredDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'folder location - subfolders will include Drawings, Assembly (instr. and pictures), Labeling etc', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'MasterRecords';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[MasterRecords]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'MasterRecords';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[ShowInTracker]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'ShowInTracker';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[ProductCategory]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'COLUMN', @level2name = N'ProductCategory';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ModelTracker].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ModelTracker', @level2type = N'CONSTRAINT', @level2name = N'ModelTracker$PrimaryKey';

