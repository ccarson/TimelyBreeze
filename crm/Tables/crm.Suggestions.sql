CREATE TABLE [crm].[Suggestions] (
    [ID]              INT            IDENTITY (1, 1) NOT NULL,
    [Area]            NVARCHAR (50)  NULL,
    [Desired Feature] NVARCHAR (MAX) NULL,
    [Desired By]      NVARCHAR (50)  NULL,
    [Implemented By]  NVARCHAR (50)  NULL,
    [Implemented On]  DATETIME2 (0)  NULL,
    [SSMA_TimeStamp]  ROWVERSION     NOT NULL,
    CONSTRAINT [Suggestions$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$Suggestions$Area$disallow_zero_length] CHECK (len([Area])>(0)),
    CONSTRAINT [SSMA_CC$Suggestions$Desired By$disallow_zero_length] CHECK (len([Desired By])>(0)),
    CONSTRAINT [SSMA_CC$Suggestions$Desired Feature$disallow_zero_length] CHECK (len([Desired Feature])>(0)),
    CONSTRAINT [SSMA_CC$Suggestions$Implemented By$disallow_zero_length] CHECK (len([Implemented By])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Suggestions$ID]
    ON [crm].[Suggestions]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions', @level2type = N'INDEX', @level2name = N'Suggestions$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions].[Area]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions', @level2type = N'COLUMN', @level2name = N'Area';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions].[Desired Feature]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions', @level2type = N'COLUMN', @level2name = N'Desired Feature';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions].[Desired By]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions', @level2type = N'COLUMN', @level2name = N'Desired By';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions].[Implemented By]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions', @level2type = N'COLUMN', @level2name = N'Implemented By';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions].[Implemented On]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions', @level2type = N'COLUMN', @level2name = N'Implemented On';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Suggestions].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Suggestions', @level2type = N'CONSTRAINT', @level2name = N'Suggestions$PrimaryKey';

