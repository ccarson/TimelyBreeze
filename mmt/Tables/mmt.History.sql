CREATE TABLE [mmt].[History] (
    [Field1] NVARCHAR (50) NULL,
    [Field2] NVARCHAR (50) NULL,
    [Field3] NVARCHAR (50) NULL
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[History]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'History';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Could store CompanyID, ContactID, OppID, CommID, ServiceID etc', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'History', @level2type = N'COLUMN', @level2name = N'Field1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[History].[Field1]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'History', @level2type = N'COLUMN', @level2name = N'Field1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[History].[Field2]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'History', @level2type = N'COLUMN', @level2name = N'Field2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[History].[Field3]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'History', @level2type = N'COLUMN', @level2name = N'Field3';

