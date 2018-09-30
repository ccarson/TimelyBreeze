CREATE TABLE [crm].[ServiceRMA] (
    [ID]                    INT            IDENTITY (1, 1) NOT NULL,
    [ServiceID]             NVARCHAR (20)  NOT NULL,
    [RMANumber]             NVARCHAR (20)  NULL,
    [DateIssued]            DATETIME2 (0)  NULL,
    [ContactID]             NVARCHAR (20)  NULL,
    [Company_Name]          NVARCHAR (50)  NULL,
    [CompanyID]             NVARCHAR (20)  NOT NULL,
    [SystemName]            NVARCHAR (75)  NULL,
    [ServiceType]           NVARCHAR (20)  NULL,
    [Warranty]              NVARCHAR (20)  NULL,
    [Purchase Date]         DATETIME2 (0)  NULL,
    [DateOpened]            DATETIME2 (0)  NULL,
    [DateReceivedMMT]       DATETIME2 (0)  NULL,
    [ReceivingMethod]       NVARCHAR (50)  NULL,
    [ReceivedBy]            NVARCHAR (50)  NULL,
    [AssignedTo]            NVARCHAR (50)  NULL,
    [DateReturnedCustomer]  DATETIME2 (0)  NULL,
    [ShippingMethod]        NVARCHAR (25)  NULL,
    [PONumber]              NVARCHAR (20)  NULL,
    [ItemsDescription]      NVARCHAR (255) NULL,
    [DateClosed]            DATETIME2 (0)  NULL,
    [Comments]              NVARCHAR (MAX) NULL,
    [Bill To: Contact Name] NVARCHAR (50)  NULL,
    [Ship To: Contact Name] NVARCHAR (50)  NULL,
    [Bill To: Company Name] NVARCHAR (50)  NULL,
    [Ship To: Company Name] NVARCHAR (50)  NULL,
    [Bill To: Address]      NVARCHAR (75)  NULL,
    [Ship To: Address]      NVARCHAR (75)  NULL,
    [Bill To: Address 2]    NVARCHAR (50)  NULL,
    [Ship to: Address 2]    NVARCHAR (50)  NULL,
    [Ship To: City]         NVARCHAR (50)  NULL,
    [Bill To: City]         NVARCHAR (50)  NULL,
    [Ship To: State]        NVARCHAR (50)  NULL,
    [Bill To: State]        NVARCHAR (50)  NULL,
    [Ship To: Zip Code]     NVARCHAR (50)  NULL,
    [Bill To: Zip Code]     NVARCHAR (50)  NULL,
    [Ship To: Country]      NVARCHAR (50)  NULL,
    [Bill To: Country]      NVARCHAR (50)  NULL,
    [Bill To: Phone]        NVARCHAR (50)  NULL,
    [Ship To: Phone]        NVARCHAR (50)  NULL,
    [Fax Number]            NVARCHAR (50)  NULL,
    [Email]                 NVARCHAR (50)  NULL,
    [tech hrs]              NVARCHAR (50)  NULL,
    [tech rate]             MONEY          NULL,
    [tech tot]              MONEY          DEFAULT ((0)) NULL,
    [trav hrs]              NVARCHAR (50)  NULL,
    [trav rate]             MONEY          NULL,
    [trav tot]              MONEY          DEFAULT ((0)) NULL,
    [eng hrs]               NVARCHAR (50)  NULL,
    [eng rate]              MONEY          NULL,
    [eng tot]               MONEY          DEFAULT ((0)) NULL,
    [parts tot]             MONEY          DEFAULT ((0)) NULL,
    [phone time]            SMALLINT       DEFAULT ((0)) NULL,
    [phone rate]            MONEY          NULL,
    [phone tot]             MONEY          DEFAULT ((0)) NULL,
    [InvoiceNumber]         NVARCHAR (25)  NULL,
    [Total]                 MONEY          DEFAULT ((0)) NULL,
    [SandH tot]             MONEY          DEFAULT ((0)) NULL,
    [Shipping tot]          MONEY          DEFAULT ((0)) NULL,
    [BillableTotal]         MONEY          DEFAULT ((0)) NULL,
    [WarrantyTotal]         MONEY          DEFAULT ((0)) NULL,
    [SSMA_TimeStamp]        ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$ServiceRMA$Bill To: City$disallow_zero_length] CHECK (len([Bill To: City])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Bill To: Country$disallow_zero_length] CHECK (len([Bill To: Country])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Bill To: Phone$disallow_zero_length] CHECK (len([Bill To: Phone])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Bill To: State$disallow_zero_length] CHECK (len([Bill To: State])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Bill To: Zip Code$disallow_zero_length] CHECK (len([Bill To: Zip Code])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Email$disallow_zero_length] CHECK (len([Email])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$eng hrs$disallow_zero_length] CHECK (len([eng hrs])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Fax Number$disallow_zero_length] CHECK (len([Fax Number])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$ServiceID$disallow_zero_length] CHECK (len([ServiceID])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Ship To: City$disallow_zero_length] CHECK (len([Ship To: City])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Ship To: Country$disallow_zero_length] CHECK (len([Ship To: Country])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Ship To: Phone$disallow_zero_length] CHECK (len([Ship To: Phone])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Ship To: State$disallow_zero_length] CHECK (len([Ship To: State])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$Ship To: Zip Code$disallow_zero_length] CHECK (len([Ship To: Zip Code])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$tech hrs$disallow_zero_length] CHECK (len([tech hrs])>(0)),
    CONSTRAINT [SSMA_CC$ServiceRMA$trav hrs$disallow_zero_length] CHECK (len([trav hrs])>(0))
);


GO
CREATE NONCLUSTERED INDEX [ServiceRMA$CompanyID]
    ON [crm].[ServiceRMA]([CompanyID] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceRMA$ContactID]
    ON [crm].[ServiceRMA]([ContactID] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceRMA$ID]
    ON [crm].[ServiceRMA]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceRMA$ServiceID]
    ON [crm].[ServiceRMA]([ServiceID] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceRMA$Ship To: Zip Code]
    ON [crm].[ServiceRMA]([Ship To: Zip Code] ASC);


GO
CREATE NONCLUSTERED INDEX [ServiceRMA$Sold To: Zip Code]
    ON [crm].[ServiceRMA]([Bill To: Zip Code] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'INDEX', @level2name = N'ServiceRMA$CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'INDEX', @level2name = N'ServiceRMA$ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'INDEX', @level2name = N'ServiceRMA$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ServiceID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'INDEX', @level2name = N'ServiceRMA$ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: Zip Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'INDEX', @level2name = N'ServiceRMA$Ship To: Zip Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Sold To: Zip Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'INDEX', @level2name = N'ServiceRMA$Sold To: Zip Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'links to customer''s service record', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ServiceID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[RMANumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'RMANumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[DateIssued]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'DateIssued';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ContactID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ContactID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'legacy', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Company_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Company_Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Company_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[SystemName]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'SystemName';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Sales, Return, Service, Repair', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ServiceType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ServiceType]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ServiceType';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Warranty]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Warranty';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Purchase Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Purchase Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[DateOpened]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'DateOpened';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[DateReceivedMMT]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'DateReceivedMMT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ReceivingMethod]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ReceivingMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ReceivedBy]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ReceivedBy';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'same as FollowupBy', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'AssignedTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[AssignedTo]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'AssignedTo';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[DateReturnedCustomer]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'DateReturnedCustomer';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'shipping method', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ShippingMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ShippingMethod]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ShippingMethod';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[PONumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'PONumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'Just a description here, detailed list is linked in another table.', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ItemsDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[ItemsDescription]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'ItemsDescription';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[DateClosed]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'DateClosed';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Comments]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Comments';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'incase the contact isn''t in the database yet (won''t have ContactID)', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: Contact Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: Contact Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: Contact Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: Contact Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship To: Contact Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: Company Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: Company Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: Company Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship To: Company Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: Address]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: Address]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship To: Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: Address 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: Address 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship to: Address 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship to: Address 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship To: City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship To: State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: Zip Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship To: Zip Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: Zip Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: Zip Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship To: Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Bill To: Phone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Bill To: Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Ship To: Phone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Ship To: Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Fax Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Fax Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Email]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Email';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[tech hrs]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'tech hrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[tech rate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'tech rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[tech tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'tech tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[trav hrs]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'trav hrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[trav rate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'trav rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[trav tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'trav tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[eng hrs]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'eng hrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[eng rate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'eng rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[eng tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'eng tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[parts tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'parts tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[phone time]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'phone time';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[phone rate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'phone rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[phone tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'phone tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[InvoiceNumber]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'InvoiceNumber';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Total]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[SandH tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'SandH tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[Shipping tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'Shipping tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[BillableTotal]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'BillableTotal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[ServiceRMA].[WarrantyTotal]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'ServiceRMA', @level2type = N'COLUMN', @level2name = N'WarrantyTotal';

