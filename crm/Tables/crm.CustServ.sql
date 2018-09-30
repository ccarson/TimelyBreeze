CREATE TABLE [crm].[CustServ] (
    [Company_Name]           NVARCHAR (50)  NULL,
    [CompanyID]              NVARCHAR (16)  NOT NULL,
    [ServiceID]              NVARCHAR (20)  NOT NULL,
    [City]                   NVARCHAR (25)  NULL,
    [Caller_Name]            NVARCHAR (40)  NULL,
    [Caller_Phone]           NVARCHAR (30)  NULL,
    [ContactID]              NVARCHAR (20)  NULL,
    [Date]                   DATETIME2 (0)  NULL,
    [Time]                   DATETIME2 (0)  NULL,
    [System Type]            NVARCHAR (75)  NULL,
    [Software Version]       NVARCHAR (100) NULL,
    [Call Taken by]          NVARCHAR (40)  NULL,
    [Problem Classification] NVARCHAR (16)  NULL,
    [Type of Call]           NVARCHAR (50)  NULL,
    [Follow-Up By]           NVARCHAR (40)  NULL,
    [Date To Call]           DATETIME2 (0)  NULL,
    [Problem_Source]         NVARCHAR (45)  NULL,
    [Solved By]              NVARCHAR (40)  NULL,
    [Service Duration]       REAL           DEFAULT ((0)) NULL,
    [Date Solved]            DATETIME2 (0)  NULL,
    [Description]            NVARCHAR (MAX) NULL,
    [Source]                 NVARCHAR (MAX) NULL,
    [Solution]               NVARCHAR (MAX) NULL,
    [Review]                 BIT            DEFAULT ((0)) NULL,
    [Keywords]               NVARCHAR (255) NULL,
    [CAPRID]                 NVARCHAR (20)  NULL,
    [Status]                 NVARCHAR (50)  NULL,
    [SSMA_TimeStamp]         ROWVERSION     NOT NULL,
    CONSTRAINT [CustServ$PrimaryKey] PRIMARY KEY CLUSTERED ([ServiceID] ASC),
    CONSTRAINT [SSMA_CC$CustServ$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$CustServ$ServiceID$disallow_zero_length] CHECK (len([ServiceID])>(0))
);


GO
CREATE NONCLUSTERED INDEX [CustServ$CPARID]
    ON [crm].[CustServ]([CAPRID] ASC);


GO
CREATE NONCLUSTERED INDEX [CustServ$CUSTSERVCompany_Name]
    ON [crm].[CustServ]([Company_Name] ASC);


GO
CREATE NONCLUSTERED INDEX [CustServ$Keywords]
    ON [crm].[CustServ]([Keywords] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[CPARID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'INDEX', @level2name = N'CustServ$CPARID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[CUSTSERVCompany_Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'INDEX', @level2name = N'CustServ$CUSTSERVCompany_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Keywords]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'INDEX', @level2name = N'CustServ$Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'legacy field', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Company_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Company_Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Company_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[ServiceID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Caller_Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Caller_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'\(#99") "000\-0000" -"aaaaaa;;_', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Caller_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Caller_Phone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Caller_Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Time]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[System Type]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'System Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Software Version]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Software Version';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Call Taken by]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Call Taken by';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Problem Classification]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Problem Classification';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Type of Call]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Type of Call';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Follow-Up By]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Follow-Up By';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Date To Call]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Date To Call';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'to be deleted later if unused', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Problem_Source';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Problem_Source]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Problem_Source';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Solved By]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Solved By';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'in hours and minutes', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Service Duration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Service Duration]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Service Duration';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Date Solved]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Date Solved';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Source]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Source';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Solution]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Solution';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Review]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Review';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Keywords]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Keywords';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[CAPRID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'CAPRID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CustServ].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CustServ', @level2type = N'CONSTRAINT', @level2name = N'CustServ$PrimaryKey';

