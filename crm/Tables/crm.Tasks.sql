CREATE TABLE [crm].[Tasks] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [TaskID]     NVARCHAR (20)  NOT NULL,
    [ContactID]  NVARCHAR (20)  NULL,
    [CompanyID]  NVARCHAR (20)  NOT NULL,
    [Subject]    NVARCHAR (255) NULL,
    [Start time] DATETIME2 (0)  NULL,
    [Due time]   DATETIME2 (0)  NULL,
    [Status]     NVARCHAR (20)  NULL,
    [Priority]   SMALLINT       DEFAULT ((0)) NULL,
    [AssignedTo] NVARCHAR (100) NULL,
    [AssignedBy] NVARCHAR (20)  NULL,
    CONSTRAINT [Tasks$PrimaryKey] PRIMARY KEY CLUSTERED ([TaskID] ASC),
    CONSTRAINT [SSMA_CC$Tasks$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Tasks$ContactID$disallow_zero_length] CHECK (len([ContactID])>(0)),
    CONSTRAINT [Tasks$CompanysTasks] FOREIGN KEY ([CompanyID]) REFERENCES [crm].[Companys] ([CompanyID]) ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [Tasks$CompanysTasks]
    ON [crm].[Tasks]([CompanyID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Tasks$ContactID]
    ON [crm].[Tasks]([ContactID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Tasks$EventID]
    ON [crm].[Tasks]([TaskID] ASC);


GO
CREATE NONCLUSTERED INDEX [Tasks$ID]
    ON [crm].[Tasks]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[CompanysTasks]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'INDEX', @level2name = N'Tasks$CompanysTasks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'INDEX', @level2name = N'Tasks$ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[EventID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'INDEX', @level2name = N'Tasks$EventID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'INDEX', @level2name = N'Tasks$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[TaskID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'TaskID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This can be used in future for more contact management..', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[Subject]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'Subject';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[Start time]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'Start time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[Due time]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'Due time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'InProgress, NotStarted, Completed, Waiting, Deferred', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'1, 2, 3 Low Normal High', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'Priority';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[Priority]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'Priority';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Usernames', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'AssignedTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[AssignedTo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'AssignedTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Username', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'AssignedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[AssignedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'COLUMN', @level2name = N'AssignedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[CompanysTasks]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'CONSTRAINT', @level2name = N'Tasks$CompanysTasks';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Tasks].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Tasks', @level2type = N'CONSTRAINT', @level2name = N'Tasks$PrimaryKey';

