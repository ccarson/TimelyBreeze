CREATE TABLE [crm].[Events] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [EventID]    NVARCHAR (20)  NOT NULL,
    [ContactID]  NVARCHAR (20)  NULL,
    [CompanyID]  NVARCHAR (20)  NOT NULL,
    [Subject]    NVARCHAR (255) NULL,
    [Location]   NVARCHAR (20)  NULL,
    [Start time] DATETIME2 (0)  NULL,
    [End time]   DATETIME2 (0)  NULL,
    [Reminder]   SMALLINT       DEFAULT ((0)) NULL,
    [AssignedTo] NVARCHAR (100) NULL,
    CONSTRAINT [Events$PrimaryKey] PRIMARY KEY CLUSTERED ([EventID] ASC),
    CONSTRAINT [SSMA_CC$Events$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Events$ContactID$disallow_zero_length] CHECK (len([ContactID])>(0)),
    CONSTRAINT [Events$CompanysEvents] FOREIGN KEY ([CompanyID]) REFERENCES [crm].[Companys] ([CompanyID]) ON UPDATE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [Events$CompanysEvents]
    ON [crm].[Events]([CompanyID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Events$ContactID]
    ON [crm].[Events]([ContactID] ASC);


GO
CREATE NONCLUSTERED INDEX [Events$EventID]
    ON [crm].[Events]([EventID] ASC);


GO
CREATE NONCLUSTERED INDEX [Events$ID]
    ON [crm].[Events]([ID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[CompanysEvents]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'INDEX', @level2name = N'Events$CompanysEvents';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'INDEX', @level2name = N'Events$ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[EventID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'INDEX', @level2name = N'Events$EventID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'INDEX', @level2name = N'Events$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[EventID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'EventID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'This can be used in future for more contact management..', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[Subject]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'Subject';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[Location]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'Location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[Start time]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'Start time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[End time]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'End time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'days', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'Reminder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[Reminder]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'Reminder';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Usernames', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'AssignedTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[AssignedTo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'COLUMN', @level2name = N'AssignedTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[CompanysEvents]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'CONSTRAINT', @level2name = N'Events$CompanysEvents';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Events].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Events', @level2type = N'CONSTRAINT', @level2name = N'Events$PrimaryKey';

