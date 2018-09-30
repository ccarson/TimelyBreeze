CREATE TABLE [crm].[Errcodes] (
    [Error Code]               FLOAT (53)     NULL,
    [Error Message]            NVARCHAR (75)  NULL,
    [Problem Symptom (if any)] NVARCHAR (75)  NULL,
    [Module]                   NVARCHAR (75)  NULL,
    [Line number]              FLOAT (53)     NULL,
    [Version]                  NVARCHAR (6)   NULL,
    [Best Handled By 1]        NVARCHAR (14)  NULL,
    [BHB 2]                    NVARCHAR (14)  NULL,
    [BHB 3]                    NVARCHAR (14)  NULL,
    [Possible Source(s)]       NVARCHAR (MAX) NULL,
    [Possible Solution(s)]     NVARCHAR (MAX) NULL,
    [SSMA_TimeStamp]           ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$Errcodes$Best Handled By 1$disallow_zero_length] CHECK (len([Best Handled By 1])>(0)),
    CONSTRAINT [SSMA_CC$Errcodes$BHB 2$disallow_zero_length] CHECK (len([BHB 2])>(0)),
    CONSTRAINT [SSMA_CC$Errcodes$BHB 3$disallow_zero_length] CHECK (len([BHB 3])>(0)),
    CONSTRAINT [SSMA_CC$Errcodes$Error Message$disallow_zero_length] CHECK (len([Error Message])>(0)),
    CONSTRAINT [SSMA_CC$Errcodes$Module$disallow_zero_length] CHECK (len([Module])>(0)),
    CONSTRAINT [SSMA_CC$Errcodes$Possible Solution(s)$disallow_zero_length] CHECK (len([Possible Solution(s)])>(0)),
    CONSTRAINT [SSMA_CC$Errcodes$Possible Source(s)$disallow_zero_length] CHECK (len([Possible Source(s)])>(0)),
    CONSTRAINT [SSMA_CC$Errcodes$Problem Symptom (if any)$disallow_zero_length] CHECK (len([Problem Symptom (if any)])>(0)),
    CONSTRAINT [SSMA_CC$Errcodes$Version$disallow_zero_length] CHECK (len([Version])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Errcodes$Error_Code]
    ON [crm].[Errcodes]([Error Code] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Error_Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'INDEX', @level2name = N'Errcodes$Error_Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Error Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Error Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Error Message]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Error Message';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Problem Symptom (if any)]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Problem Symptom (if any)';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Module]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Module';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Line number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Line number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Version]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Version';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Best Handled By 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Best Handled By 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[BHB 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'BHB 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[BHB 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'BHB 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Possible Source(s)]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Possible Source(s)';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Errcodes].[Possible Solution(s)]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Errcodes', @level2type = N'COLUMN', @level2name = N'Possible Solution(s)';

