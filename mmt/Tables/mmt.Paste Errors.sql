CREATE TABLE [mmt].[Paste Errors] (
    [Serial Number]  NVARCHAR (255) NULL,
    [Description]    NVARCHAR (255) NULL,
    [Model Number]   NVARCHAR (255) NULL,
    [MMT PO Number]  NVARCHAR (255) NULL,
    [Date MMT Recd_] DATETIME2 (0)  NULL,
    [System]         NVARCHAR (255) NULL,
    [Company Name]   NVARCHAR (255) NULL,
    [CompanyID]      NVARCHAR (255) NULL,
    [Category]       NVARCHAR (255) NULL,
    [System Name]    NVARCHAR (255) NULL,
    [Sub Location]   NVARCHAR (255) NULL,
    [Comment]        NVARCHAR (MAX) NULL,
    [SSMA_TimeStamp] ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$Paste Errors$Category$disallow_zero_length] CHECK (len([Category])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$Comment$disallow_zero_length] CHECK (len([Comment])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$Company Name$disallow_zero_length] CHECK (len([Company Name])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$Description$disallow_zero_length] CHECK (len([Description])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$MMT PO Number$disallow_zero_length] CHECK (len([MMT PO Number])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$Model Number$disallow_zero_length] CHECK (len([Model Number])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$Serial Number$disallow_zero_length] CHECK (len([Serial Number])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$Sub Location$disallow_zero_length] CHECK (len([Sub Location])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$System Name$disallow_zero_length] CHECK (len([System Name])>(0)),
    CONSTRAINT [SSMA_CC$Paste Errors$System$disallow_zero_length] CHECK (len([System])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[Serial Number]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'Serial Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[Description]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[Model Number]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'Model Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[MMT PO Number]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'MMT PO Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[Date MMT Recd_]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'Date MMT Recd_';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[System]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'System';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[Company Name]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'Company Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[Category]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'Category';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[System Name]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'System Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[Sub Location]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'Sub Location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[Paste Errors].[Comment]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'Paste Errors', @level2type = N'COLUMN', @level2name = N'Comment';

