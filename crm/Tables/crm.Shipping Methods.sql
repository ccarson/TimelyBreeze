CREATE TABLE [crm].[Shipping Methods] (
    [Index]           INT           IDENTITY (1, 1) NOT NULL,
    [Shipping Method] NVARCHAR (30) NULL,
    [Sequence]        INT           DEFAULT ((0)) NULL,
    CONSTRAINT [Shipping Methods$PrimaryKey] PRIMARY KEY CLUSTERED ([Index] ASC)
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Shipping Methods]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Shipping Methods';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Shipping Methods].[Index]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Shipping Methods', @level2type = N'COLUMN', @level2name = N'Index';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Shipping Methods].[Shipping Method]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Shipping Methods', @level2type = N'COLUMN', @level2name = N'Shipping Method';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Shipping Methods].[Sequence]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Shipping Methods', @level2type = N'COLUMN', @level2name = N'Sequence';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Shipping Methods].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Shipping Methods', @level2type = N'CONSTRAINT', @level2name = N'Shipping Methods$PrimaryKey';

