CREATE TABLE [crm].[UserGroups] (
    [UserID]           INT           IDENTITY (1, 1) NOT NULL,
    [User Name]        NVARCHAR (50) NULL,
    [Sales]            BIT           DEFAULT ((0)) NULL,
    [Software]         BIT           DEFAULT ((0)) NULL,
    [Customer Service] BIT           DEFAULT ((0)) NULL,
    [Production]       BIT           DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]   ROWVERSION    NOT NULL,
    CONSTRAINT [UserGroups$PrimaryKey] PRIMARY KEY CLUSTERED ([UserID] ASC),
    CONSTRAINT [SSMA_CC$UserGroups$User Name$disallow_zero_length] CHECK (len([User Name])>(0))
);


GO
CREATE NONCLUSTERED INDEX [UserGroups$UserID]
    ON [crm].[UserGroups]([UserID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups].[UserID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'INDEX', @level2name = N'UserGroups$UserID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups].[UserID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'COLUMN', @level2name = N'UserID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'''as it appears in Log in form', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'COLUMN', @level2name = N'User Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups].[User Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'COLUMN', @level2name = N'User Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups].[Sales]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'COLUMN', @level2name = N'Sales';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups].[Software]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'COLUMN', @level2name = N'Software';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups].[Customer Service]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'COLUMN', @level2name = N'Customer Service';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups].[Production]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'COLUMN', @level2name = N'Production';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[UserGroups].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'UserGroups', @level2type = N'CONSTRAINT', @level2name = N'UserGroups$PrimaryKey';

