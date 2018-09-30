CREATE TABLE [crm].[PAR] (
    [ID]                      INT            IDENTITY (1, 1) NOT NULL,
    [PARID]                   NVARCHAR (20)  NOT NULL,
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
    [PreventativeAction]      NVARCHAR (MAX) NULL,
    [PrevRecordedBy]          NVARCHAR (40)  NULL,
    [PrevDate]                DATETIME2 (0)  NULL,
    [VerifiedBy]              NVARCHAR (40)  NULL,
    [VerifiedOn]              DATETIME2 (0)  NULL,
    [Status]                  NVARCHAR (15)  NULL,
    [SSMA_TimeStamp]          ROWVERSION     NOT NULL,
    CONSTRAINT [PAR$PrimaryKey] PRIMARY KEY CLUSTERED ([PARID] ASC),
    CONSTRAINT [SSMA_CC$PAR$PARID$disallow_zero_length] CHECK (len([PARID])>(0)),
    CONSTRAINT [PAR$ModelTrackerPAR] FOREIGN KEY ([Model-Rev]) REFERENCES [crm].[ModelTracker] ([Model-Rev]) ON UPDATE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [PAR$CAPRID]
    ON [crm].[PAR]([PARID] ASC);


GO
CREATE NONCLUSTERED INDEX [PAR$ID]
    ON [crm].[PAR]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [PAR$ItemsAffected]
    ON [crm].[PAR]([ItemsAffected] ASC);


GO
CREATE NONCLUSTERED INDEX [PAR$ModelTrackerPAR]
    ON [crm].[PAR]([Model-Rev] ASC);


GO
CREATE NONCLUSTERED INDEX [PAR$ProductCategoryID]
    ON [crm].[PAR]([ProductCategoryID] ASC);


GO
CREATE NONCLUSTERED INDEX [PAR$SubProductID]
    ON [crm].[PAR]([SubProductID] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[CAPRID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'INDEX', @level2name = N'PAR$CAPRID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'INDEX', @level2name = N'PAR$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ItemsAffected]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'INDEX', @level2name = N'PAR$ItemsAffected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ModelTrackerPAR]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'INDEX', @level2name = N'PAR$ModelTrackerPAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ProductCategoryID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'INDEX', @level2name = N'PAR$ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[SubProductID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'INDEX', @level2name = N'PAR$SubProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[PARID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'PARID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[Model-Rev]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'Model-Rev';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ComponentName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'ComponentName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ReportDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'ReportDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ProductCategoryID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'ProductCategoryID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[SubProductID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'SubProductID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Product/Process Description', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[Description]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'Description';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Number of Item(s) affected', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'ItemsAffected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ItemsAffected]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'ItemsAffected';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[RepeatObservation]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'RepeatObservation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[DiscrepancyDiscr]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'DiscrepancyDiscr';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[DiscrepancyRecordedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'DiscrepancyRecordedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[DiscrepancyDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'DiscrepancyDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[InvestigationResults]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'InvestigationResults';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[InvestigationRecordedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'InvestigationRecordedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[InvestigationDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'InvestigationDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[PreventativeAction]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'PreventativeAction';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[PrevRecordedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'PrevRecordedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[PrevDate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'PrevDate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[VerifiedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'VerifiedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[VerifiedOn]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'VerifiedOn';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[Status]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'COLUMN', @level2name = N'Status';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[ModelTrackerPAR]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'CONSTRAINT', @level2name = N'PAR$ModelTrackerPAR';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[PAR].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'PAR', @level2type = N'CONSTRAINT', @level2name = N'PAR$PrimaryKey';

