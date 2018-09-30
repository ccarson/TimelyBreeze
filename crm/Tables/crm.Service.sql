CREATE TABLE [crm].[Service] (
    [ID]                     INT            IDENTITY (1, 1) NOT NULL,
    [Company_Name]           NVARCHAR (50)  NULL,
    [CompanyID]              NVARCHAR (16)  NOT NULL,
    [ServiceID]              NVARCHAR (20)  NOT NULL,
    [Sold To: Company Name]  NVARCHAR (50)  NULL,
    [Ship To: Company Name]  NVARCHAR (50)  NULL,
    [Sold To: Address]       NVARCHAR (50)  NULL,
    [Ship To: Address]       NVARCHAR (50)  NULL,
    [Sold To: Address 2]     NVARCHAR (50)  NULL,
    [Ship to: Address 2]     NVARCHAR (50)  NULL,
    [Ship To: City]          NVARCHAR (50)  NULL,
    [Sold To: City]          NVARCHAR (50)  NULL,
    [Ship To: State]         NVARCHAR (50)  NULL,
    [Sold To: State]         NVARCHAR (50)  NULL,
    [Ship To: Zip Code]      NVARCHAR (50)  NULL,
    [Sold To: Zip Code]      NVARCHAR (50)  NULL,
    [Ship To: Country]       NVARCHAR (50)  NULL,
    [Sold To: Country]       NVARCHAR (50)  NULL,
    [Sold To: Phone]         NVARCHAR (50)  NULL,
    [Ship To: Phone]         NVARCHAR (50)  NULL,
    [Contact Name]           NVARCHAR (50)  NULL,
    [Phone Number]           NVARCHAR (50)  NULL,
    [Extension]              NVARCHAR (50)  NULL,
    [Fax Number]             NVARCHAR (50)  NULL,
    [Company/Department]     NVARCHAR (50)  NULL,
    [Purchase Order Number]  NVARCHAR (50)  NULL,
    [Date Required]          NVARCHAR (50)  NULL,
    [Terms]                  NVARCHAR (50)  NULL,
    [Received Via/Date]      NVARCHAR (50)  NULL,
    [Ship Via/Date]          NVARCHAR (50)  NULL,
    [Purchase Date]          NVARCHAR (50)  NULL,
    [Warranty Repair]        NVARCHAR (50)  NULL,
    [Shop/Field]             NVARCHAR (50)  NULL,
    [Parts Required 1]       MONEY          NULL,
    [Parts Required 2]       MONEY          NULL,
    [Parts Required 3]       MONEY          NULL,
    [Parts Required 4]       MONEY          NULL,
    [Parts Required 5]       MONEY          NULL,
    [Parts Required 6]       MONEY          NULL,
    [Part Bin 1]             NVARCHAR (50)  NULL,
    [Part Bin 2]             NVARCHAR (50)  NULL,
    [Part Bin 3]             NVARCHAR (50)  NULL,
    [Part Bin 4]             NVARCHAR (50)  NULL,
    [Part Bin 5]             NVARCHAR (50)  NULL,
    [Part Bin 6]             NVARCHAR (50)  NULL,
    [Part 1]                 NVARCHAR (50)  NULL,
    [Part 2]                 NVARCHAR (50)  NULL,
    [Part 3]                 NVARCHAR (50)  NULL,
    [Part 4]                 NVARCHAR (50)  NULL,
    [Part 5]                 NVARCHAR (50)  NULL,
    [Part 6]                 NVARCHAR (50)  NULL,
    [Ser 1]                  NVARCHAR (50)  NULL,
    [Ser 2]                  NVARCHAR (50)  NULL,
    [Ser 3]                  NVARCHAR (50)  NULL,
    [Ser 4]                  NVARCHAR (50)  NULL,
    [Ser 5]                  NVARCHAR (50)  NULL,
    [Ser 6]                  NVARCHAR (50)  NULL,
    [UP 1]                   MONEY          NULL,
    [UP 2]                   MONEY          NULL,
    [UP 3]                   MONEY          NULL,
    [UP 4]                   MONEY          NULL,
    [UP 5]                   MONEY          NULL,
    [UP 6]                   MONEY          NULL,
    [Total Net 1]            MONEY          DEFAULT ((0)) NULL,
    [Total Net 2]            MONEY          DEFAULT ((0)) NULL,
    [Total Net 3]            MONEY          DEFAULT ((0)) NULL,
    [Total Net 4]            MONEY          DEFAULT ((0)) NULL,
    [Total Net 5]            MONEY          DEFAULT ((0)) NULL,
    [Total Net 6]            MONEY          DEFAULT ((0)) NULL,
    [Sub Total]              MONEY          NULL,
    [Tax]                    MONEY          DEFAULT ((0)) NULL,
    [Shipping]               MONEY          DEFAULT ((0)) NULL,
    [Total]                  MONEY          NULL,
    [Parts Total]            MONEY          NULL,
    [Lodging]                MONEY          DEFAULT ((0)) NULL,
    [Transportation]         MONEY          DEFAULT ((0)) NULL,
    [Loaner info]            NVARCHAR (255) NULL,
    [Technician]             NVARCHAR (50)  NULL,
    [Authorization]          NVARCHAR (50)  NULL,
    [Labor Hrs]              NVARCHAR (50)  NULL,
    [Hours 1]                MONEY          NULL,
    [Hours 2]                MONEY          NULL,
    [Hours 3]                MONEY          NULL,
    [Hours 4]                MONEY          NULL,
    [Hours 5]                MONEY          NULL,
    [Labor Hours Sub Total]  MONEY          NULL,
    [Total 1]                MONEY          DEFAULT ((0)) NULL,
    [Total 2]                MONEY          DEFAULT ((0)) NULL,
    [Total 3]                MONEY          DEFAULT ((0)) NULL,
    [Total 4]                MONEY          DEFAULT ((0)) NULL,
    [Total 5]                MONEY          DEFAULT ((0)) NULL,
    [Hr Rate 1]              MONEY          DEFAULT ((100)) NULL,
    [Hr Rate 2]              MONEY          DEFAULT ((50)) NULL,
    [Hr Rate 3]              MONEY          DEFAULT ((120)) NULL,
    [Hr Rate 4]              MONEY          DEFAULT ((60)) NULL,
    [Hr Rate 5]              MONEY          DEFAULT ((30)) NULL,
    [Rvcdvia]                NVARCHAR (50)  NULL,
    [Shippedvia]             NVARCHAR (50)  NULL,
    [bin location]           INT            DEFAULT ((0)) NULL,
    [tech ot hrs]            NVARCHAR (50)  NULL,
    [tech ot rate]           MONEY          DEFAULT ((150)) NULL,
    [tech ot tot]            MONEY          DEFAULT ((0)) NULL,
    [tech trav ot hrs]       NVARCHAR (50)  NULL,
    [tech trav ot rate]      MONEY          DEFAULT ((75)) NULL,
    [tech trav ot tot]       MONEY          DEFAULT ((0)) NULL,
    [eng ot hrs]             NVARCHAR (50)  NULL,
    [eng ot rate]            MONEY          DEFAULT ((180)) NULL,
    [eng ot tot]             MONEY          DEFAULT ((0)) NULL,
    [eng trav ot hrs]        NVARCHAR (50)  NULL,
    [eng trav ot rate]       MONEY          DEFAULT ((90)) NULL,
    [eng trav ot tot]        MONEY          DEFAULT ((0)) NULL,
    [service date]           NVARCHAR (50)  NULL,
    [Invoice #]              NVARCHAR (50)  NULL,
    [Product received 1]     NVARCHAR (50)  NULL,
    [Product received 2]     NVARCHAR (50)  NULL,
    [Product received 3]     NVARCHAR (50)  NULL,
    [Product received 4]     NVARCHAR (50)  NULL,
    [Product received 5]     NVARCHAR (50)  NULL,
    [Product received 6]     NVARCHAR (50)  NULL,
    [PR Qty 1]               NVARCHAR (50)  NULL,
    [PR Qty 2]               NVARCHAR (50)  NULL,
    [PR Qty 3]               NVARCHAR (50)  NULL,
    [PR Qty 4]               NVARCHAR (50)  NULL,
    [PR Qty 5]               NVARCHAR (50)  NULL,
    [PR Qty 6]               NVARCHAR (50)  NULL,
    [PR Ser# 1]              NVARCHAR (50)  NULL,
    [PR Ser# 2]              NVARCHAR (50)  NULL,
    [PR Ser# 3]              NVARCHAR (50)  NULL,
    [PR Ser# 4]              NVARCHAR (50)  NULL,
    [PR Ser# 5]              NVARCHAR (50)  NULL,
    [PR Ser# 6]              NVARCHAR (50)  NULL,
    [PR Notes]               NVARCHAR (MAX) NULL,
    [Product service record] NVARCHAR (50)  NULL,
    [SSMA_TimeStamp]         ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$Service$Authorization$disallow_zero_length] CHECK (len([Authorization])>(0)),
    CONSTRAINT [SSMA_CC$Service$Company/Department$disallow_zero_length] CHECK (len([Company/Department])>(0)),
    CONSTRAINT [SSMA_CC$Service$CompanyID$disallow_zero_length] CHECK (len([CompanyID])>(0)),
    CONSTRAINT [SSMA_CC$Service$Contact Name$disallow_zero_length] CHECK (len([Contact Name])>(0)),
    CONSTRAINT [SSMA_CC$Service$Date Required$disallow_zero_length] CHECK (len([Date Required])>(0)),
    CONSTRAINT [SSMA_CC$Service$eng ot hrs$disallow_zero_length] CHECK (len([eng ot hrs])>(0)),
    CONSTRAINT [SSMA_CC$Service$eng trav ot hrs$disallow_zero_length] CHECK (len([eng trav ot hrs])>(0)),
    CONSTRAINT [SSMA_CC$Service$Extension$disallow_zero_length] CHECK (len([Extension])>(0)),
    CONSTRAINT [SSMA_CC$Service$Fax Number$disallow_zero_length] CHECK (len([Fax Number])>(0)),
    CONSTRAINT [SSMA_CC$Service$Invoice #$disallow_zero_length] CHECK (len([Invoice #])>(0)),
    CONSTRAINT [SSMA_CC$Service$Labor Hrs$disallow_zero_length] CHECK (len([Labor Hrs])>(0)),
    CONSTRAINT [SSMA_CC$Service$Loaner info$disallow_zero_length] CHECK (len([Loaner info])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part 1$disallow_zero_length] CHECK (len([Part 1])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part 2$disallow_zero_length] CHECK (len([Part 2])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part 3$disallow_zero_length] CHECK (len([Part 3])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part 4$disallow_zero_length] CHECK (len([Part 4])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part 5$disallow_zero_length] CHECK (len([Part 5])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part 6$disallow_zero_length] CHECK (len([Part 6])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part Bin 1$disallow_zero_length] CHECK (len([Part Bin 1])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part Bin 2$disallow_zero_length] CHECK (len([Part Bin 2])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part Bin 3$disallow_zero_length] CHECK (len([Part Bin 3])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part Bin 4$disallow_zero_length] CHECK (len([Part Bin 4])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part Bin 5$disallow_zero_length] CHECK (len([Part Bin 5])>(0)),
    CONSTRAINT [SSMA_CC$Service$Part Bin 6$disallow_zero_length] CHECK (len([Part Bin 6])>(0)),
    CONSTRAINT [SSMA_CC$Service$Phone Number$disallow_zero_length] CHECK (len([Phone Number])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Notes$disallow_zero_length] CHECK (len([PR Notes])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Qty 1$disallow_zero_length] CHECK (len([PR Qty 1])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Qty 2$disallow_zero_length] CHECK (len([PR Qty 2])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Qty 3$disallow_zero_length] CHECK (len([PR Qty 3])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Qty 4$disallow_zero_length] CHECK (len([PR Qty 4])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Qty 5$disallow_zero_length] CHECK (len([PR Qty 5])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Qty 6$disallow_zero_length] CHECK (len([PR Qty 6])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Ser# 1$disallow_zero_length] CHECK (len([PR Ser# 1])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Ser# 2$disallow_zero_length] CHECK (len([PR Ser# 2])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Ser# 3$disallow_zero_length] CHECK (len([PR Ser# 3])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Ser# 4$disallow_zero_length] CHECK (len([PR Ser# 4])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Ser# 5$disallow_zero_length] CHECK (len([PR Ser# 5])>(0)),
    CONSTRAINT [SSMA_CC$Service$PR Ser# 6$disallow_zero_length] CHECK (len([PR Ser# 6])>(0)),
    CONSTRAINT [SSMA_CC$Service$Product received 1$disallow_zero_length] CHECK (len([Product received 1])>(0)),
    CONSTRAINT [SSMA_CC$Service$Product received 2$disallow_zero_length] CHECK (len([Product received 2])>(0)),
    CONSTRAINT [SSMA_CC$Service$Product received 3$disallow_zero_length] CHECK (len([Product received 3])>(0)),
    CONSTRAINT [SSMA_CC$Service$Product received 4$disallow_zero_length] CHECK (len([Product received 4])>(0)),
    CONSTRAINT [SSMA_CC$Service$Product received 5$disallow_zero_length] CHECK (len([Product received 5])>(0)),
    CONSTRAINT [SSMA_CC$Service$Product received 6$disallow_zero_length] CHECK (len([Product received 6])>(0)),
    CONSTRAINT [SSMA_CC$Service$Product service record$disallow_zero_length] CHECK (len([Product service record])>(0)),
    CONSTRAINT [SSMA_CC$Service$Purchase Date$disallow_zero_length] CHECK (len([Purchase Date])>(0)),
    CONSTRAINT [SSMA_CC$Service$Purchase Order Number$disallow_zero_length] CHECK (len([Purchase Order Number])>(0)),
    CONSTRAINT [SSMA_CC$Service$Received Via/Date$disallow_zero_length] CHECK (len([Received Via/Date])>(0)),
    CONSTRAINT [SSMA_CC$Service$Rvcdvia$disallow_zero_length] CHECK (len([Rvcdvia])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ser 1$disallow_zero_length] CHECK (len([Ser 1])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ser 2$disallow_zero_length] CHECK (len([Ser 2])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ser 3$disallow_zero_length] CHECK (len([Ser 3])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ser 4$disallow_zero_length] CHECK (len([Ser 4])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ser 5$disallow_zero_length] CHECK (len([Ser 5])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ser 6$disallow_zero_length] CHECK (len([Ser 6])>(0)),
    CONSTRAINT [SSMA_CC$Service$service date$disallow_zero_length] CHECK (len([service date])>(0)),
    CONSTRAINT [SSMA_CC$Service$ServiceID$disallow_zero_length] CHECK (len([ServiceID])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ship To: City$disallow_zero_length] CHECK (len([Ship To: City])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ship To: Country$disallow_zero_length] CHECK (len([Ship To: Country])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ship To: Phone$disallow_zero_length] CHECK (len([Ship To: Phone])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ship To: State$disallow_zero_length] CHECK (len([Ship To: State])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ship To: Zip Code$disallow_zero_length] CHECK (len([Ship To: Zip Code])>(0)),
    CONSTRAINT [SSMA_CC$Service$Ship Via/Date$disallow_zero_length] CHECK (len([Ship Via/Date])>(0)),
    CONSTRAINT [SSMA_CC$Service$Shippedvia$disallow_zero_length] CHECK (len([Shippedvia])>(0)),
    CONSTRAINT [SSMA_CC$Service$Shop/Field$disallow_zero_length] CHECK (len([Shop/Field])>(0)),
    CONSTRAINT [SSMA_CC$Service$Sold To: City$disallow_zero_length] CHECK (len([Sold To: City])>(0)),
    CONSTRAINT [SSMA_CC$Service$Sold To: Country$disallow_zero_length] CHECK (len([Sold To: Country])>(0)),
    CONSTRAINT [SSMA_CC$Service$Sold To: Phone$disallow_zero_length] CHECK (len([Sold To: Phone])>(0)),
    CONSTRAINT [SSMA_CC$Service$Sold To: State$disallow_zero_length] CHECK (len([Sold To: State])>(0)),
    CONSTRAINT [SSMA_CC$Service$Sold To: Zip Code$disallow_zero_length] CHECK (len([Sold To: Zip Code])>(0)),
    CONSTRAINT [SSMA_CC$Service$tech ot hrs$disallow_zero_length] CHECK (len([tech ot hrs])>(0)),
    CONSTRAINT [SSMA_CC$Service$tech trav ot hrs$disallow_zero_length] CHECK (len([tech trav ot hrs])>(0)),
    CONSTRAINT [SSMA_CC$Service$Technician$disallow_zero_length] CHECK (len([Technician])>(0)),
    CONSTRAINT [SSMA_CC$Service$Terms$disallow_zero_length] CHECK (len([Terms])>(0)),
    CONSTRAINT [SSMA_CC$Service$Warranty Repair$disallow_zero_length] CHECK (len([Warranty Repair])>(0))
);


GO
CREATE NONCLUSTERED INDEX [Service$ID]
    ON [crm].[Service]([ID] ASC);


GO
CREATE NONCLUSTERED INDEX [Service$Ship To: Zip Code]
    ON [crm].[Service]([Ship To: Zip Code] ASC);


GO
CREATE NONCLUSTERED INDEX [Service$Sold To: Zip Code]
    ON [crm].[Service]([Sold To: Zip Code] ASC);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'INDEX', @level2name = N'Service$ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship To: Zip Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'INDEX', @level2name = N'Service$Ship To: Zip Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: Zip Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'INDEX', @level2name = N'Service$Sold To: Zip Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[ID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Company_Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Company_Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[CompanyID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'CompanyID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = N'links to customer''s service record', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[ServiceID]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'ServiceID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: Company Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sold To: Company Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship To: Company Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship To: Company Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: Address]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sold To: Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship To: Address]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship To: Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: Address 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sold To: Address 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship to: Address 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship to: Address 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship To: City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship To: City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: City]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sold To: City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship To: State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship To: State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: State]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sold To: State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship To: Zip Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship To: Zip Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: Zip Code]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sold To: Zip Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship To: Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship To: Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: Country]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sold To: Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sold To: Phone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sold To: Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship To: Phone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship To: Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Contact Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Contact Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Phone Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Extension]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Extension';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Fax Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Fax Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Company/Department]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Company/Department';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Purchase Order Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Purchase Order Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Date Required]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Date Required';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Terms]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Terms';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Received Via/Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Received Via/Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ship Via/Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ship Via/Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Purchase Date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Purchase Date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Warranty Repair]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Warranty Repair';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Shop/Field]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Shop/Field';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Parts Required 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Parts Required 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Parts Required 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Parts Required 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Parts Required 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Parts Required 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Parts Required 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Parts Required 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Parts Required 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Parts Required 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Parts Required 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Parts Required 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part Bin 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part Bin 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part Bin 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part Bin 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part Bin 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part Bin 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part Bin 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part Bin 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part Bin 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part Bin 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part Bin 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part Bin 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Part 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Part 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ser 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ser 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ser 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ser 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ser 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ser 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ser 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ser 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ser 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ser 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Ser 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Ser 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[UP 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'UP 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[UP 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'UP 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[UP 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'UP 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[UP 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'UP 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[UP 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'UP 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[UP 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'UP 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total Net 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total Net 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total Net 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total Net 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total Net 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total Net 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total Net 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total Net 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total Net 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total Net 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total Net 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total Net 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Sub Total]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Sub Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Tax]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Tax';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Shipping]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Shipping';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Parts Total]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Parts Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Lodging]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Lodging';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Transportation]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Transportation';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Loaner info]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Loaner info';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Technician]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Technician';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Authorization]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Authorization';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Labor Hrs]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Labor Hrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hours 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hours 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hours 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hours 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hours 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hours 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hours 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hours 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hours 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hours 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Labor Hours Sub Total]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Labor Hours Sub Total';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Total 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Total 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hr Rate 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hr Rate 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hr Rate 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hr Rate 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hr Rate 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hr Rate 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hr Rate 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hr Rate 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Hr Rate 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Hr Rate 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Rvcdvia]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Rvcdvia';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Shippedvia]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Shippedvia';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[bin location]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'bin location';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[tech ot hrs]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'tech ot hrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[tech ot rate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'tech ot rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[tech ot tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'tech ot tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[tech trav ot hrs]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'tech trav ot hrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[tech trav ot rate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'tech trav ot rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[tech trav ot tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'tech trav ot tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[eng ot hrs]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'eng ot hrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[eng ot rate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'eng ot rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[eng ot tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'eng ot tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[eng trav ot hrs]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'eng trav ot hrs';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[eng trav ot rate]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'eng trav ot rate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[eng trav ot tot]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'eng trav ot tot';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[service date]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'service date';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Invoice #]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Invoice #';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Product received 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Product received 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Product received 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Product received 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Product received 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Product received 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Product received 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Product received 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Product received 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Product received 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Product received 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Product received 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Qty 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Qty 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Qty 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Qty 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Qty 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Qty 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Qty 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Qty 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Qty 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Qty 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Qty 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Qty 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Ser# 1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Ser# 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Ser# 2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Ser# 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Ser# 3]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Ser# 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Ser# 4]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Ser# 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Ser# 5]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Ser# 5';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Ser# 6]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Ser# 6';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[PR Notes]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'PR Notes';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[Service].[Product service record]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'Service', @level2type = N'COLUMN', @level2name = N'Product service record';

