CREATE TABLE [mmt].[MapTable] (
    [ID]          INT           IDENTITY (1, 1) NOT NULL,
    [CountryName] NVARCHAR (50) NULL,
    [CountryCode] SMALLINT      DEFAULT ((0)) NULL,
    CONSTRAINT [MapTable$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE NONCLUSTERED INDEX [MapTable$CountryCode]
    ON [mmt].[MapTable]([CountryCode] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[MapTable].[CountryCode]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'MapTable', @level2type = N'INDEX', @level2name = N'MapTable$CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[MapTable]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'MapTable';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[MapTable].[ID]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'MapTable', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[MapTable].[CountryName]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'MapTable', @level2type = N'COLUMN', @level2name = N'CountryName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[MapTable].[CountryCode]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'MapTable', @level2type = N'COLUMN', @level2name = N'CountryCode';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[MapTable].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'MapTable', @level2type = N'CONSTRAINT', @level2name = N'MapTable$PrimaryKey';

