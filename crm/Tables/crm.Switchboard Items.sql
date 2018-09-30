CREATE TABLE [crm].[Switchboard Items] (
    [SwitchboardID] INT            NOT NULL,
    [ItemNumber]    SMALLINT       DEFAULT ((0)) NOT NULL,
    [ItemText]      NVARCHAR (255) NULL,
    [Command]       SMALLINT       NULL,
    [Argument]      NVARCHAR (255) NULL,
    CONSTRAINT [Switchboard Items$PrimaryKey] PRIMARY KEY CLUSTERED ([SwitchboardID] ASC, [ItemNumber] ASC),
    CONSTRAINT [SSMA_CC$Switchboard Items$ItemText$disallow_zero_length] CHECK (len([ItemText])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Switchboard Items]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Switchboard Items';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Switchboard Items].[SwitchboardID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Switchboard Items', @level2type = N'COLUMN', @level2name = N'SwitchboardID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Switchboard Items].[ItemNumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Switchboard Items', @level2type = N'COLUMN', @level2name = N'ItemNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Switchboard Items].[ItemText]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Switchboard Items', @level2type = N'COLUMN', @level2name = N'ItemText';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Switchboard Items].[Command]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Switchboard Items', @level2type = N'COLUMN', @level2name = N'Command';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Switchboard Items].[Argument]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Switchboard Items', @level2type = N'COLUMN', @level2name = N'Argument';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Switchboard Items].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Switchboard Items', @level2type = N'CONSTRAINT', @level2name = N'Switchboard Items$PrimaryKey';

