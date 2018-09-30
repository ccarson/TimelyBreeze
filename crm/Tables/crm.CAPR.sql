CREATE TABLE [crm].[CAPR] (
    [ID]                      INT            IDENTITY (1, 1) NOT NULL,
    [CAPRID]                  NVARCHAR (20)  NOT NULL,
    [Model-Rev]               NVARCHAR (25)  NULL,
    [ComponentName]           NVARCHAR (50)  NULL,
    [ReportDate]              DATETIME2 (0)  NULL,
    [ProductCategoryID]       NVARCHAR (20)  NULL,
    [SubProductID]            NVARCHAR (255) NULL,
    [Description]             NVARCHAR (255) NULL,
    [ItemsAffected]           SMALLINT       DEFAULT ((0)) NULL,
    [RepeatObservation]       BIT            DEFAULT ((0)) NULL,
    [DiscrepancyDiscr]        NVARCHAR (MAX) NULL,
    [DiscrepancyRecordedBy]   NVARCHAR (40)  NULL,
    [DiscrepancyDate]         DATETIME2 (0)  NULL,
    [InvestigationResults]    NVARCHAR (MAX) NULL,
    [InvestigationRecordedBy] NVARCHAR (40)  NULL,
    [InvestigationDate]       DATETIME2 (0)  NULL,
    [CorrectiveAction]        NVARCHAR (MAX) NULL,
    [CorrRecordedBy]          NVARCHAR (40)  NULL,
    [CorrDate]                DATETIME2 (0)  NULL,
    [PreventativeAction]      NVARCHAR (MAX) NULL,
    [PrevRecordedBy]          NVARCHAR (40)  NULL,
    [PrevDate]                DATETIME2 (0)  NULL,
    [VerifiedBy]              NVARCHAR (40)  NULL,
    [VerifiedOn]              DATETIME2 (0)  NULL,
    [Status]                  NVARCHAR (15)  NULL,
    [SSMA_TimeStamp]          ROWVERSION     NOT NULL,
    CONSTRAINT [CAPR$PrimaryKey] PRIMARY KEY CLUSTERED ([CAPRID] ASC),
    CONSTRAINT [SSMA_CC$CAPR$CAPRID$disallow_zero_length] CHECK (len([CAPRID])>(0)),
    CONSTRAINT [CAPR$ModelTrackerCAPR] FOREIGN KEY ([Model-Rev]) REFERENCES [crm].[ModelTracker] ([Model-Rev]) ON UPDATE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [CAPR$CAPRID]
    ON [crm].[CAPR]([CAPRID] ASC);


GO
CREATE NONCLUSTERED INDEX [CAPR$ID]
    ON [crm].[CAPR]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [CAPR$ItemsAffected]
    ON [crm].[CAPR]([ItemsAffected] ASC);


GO
CREATE NONCLUSTERED INDEX [CAPR$ModelTrackerCAPR]
    ON [crm].[CAPR]([Model-Rev] ASC);


GO
CREATE NONCLUSTERED INDEX [CAPR$ProductCategoryID]
    ON [crm].[CAPR]([ProductCategoryID] ASC);


GO
CREATE NONCLUSTERED INDEX [CAPR$SubProductID]
    ON [crm].[CAPR]([SubProductID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[CAPRID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'INDEX', @level2name = N'CAPR$CAPRID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'INDEX', @level2name = N'CAPR$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ItemsAffected]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'INDEX', @level2name = N'CAPR$ItemsAffected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ModelTrackerCAPR]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'INDEX', @level2name = N'CAPR$ModelTrackerCAPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ProductCategoryID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'INDEX', @level2name = N'CAPR$ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[SubProductID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'INDEX', @level2name = N'CAPR$SubProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[CAPRID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'CAPRID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[Model-Rev]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'Model-Rev';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ComponentName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'ComponentName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ReportDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'ReportDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ProductCategoryID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[SubProductID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'SubProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product/Process Description', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number of Item(s) affected', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'ItemsAffected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ItemsAffected]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'ItemsAffected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[RepeatObservation]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'RepeatObservation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[DiscrepancyDiscr]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'DiscrepancyDiscr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[DiscrepancyRecordedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'DiscrepancyRecordedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[DiscrepancyDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'DiscrepancyDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[InvestigationResults]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'InvestigationResults';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[InvestigationRecordedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'InvestigationRecordedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[InvestigationDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'InvestigationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[CorrectiveAction]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'CorrectiveAction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[CorrRecordedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'CorrRecordedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[CorrDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'CorrDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[PreventativeAction]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'PreventativeAction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[PrevRecordedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'PrevRecordedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[PrevDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'PrevDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[VerifiedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'VerifiedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[VerifiedOn]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'VerifiedOn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[ModelTrackerCAPR]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'CONSTRAINT', @level2name = N'CAPR$ModelTrackerCAPR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[CAPR].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'CAPR', @level2type = N'CONSTRAINT', @level2name = N'CAPR$PrimaryKey';

