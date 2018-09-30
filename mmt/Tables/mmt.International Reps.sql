CREATE TABLE [mmt].[International Reps] (
    [ID]                           INT            IDENTITY (1, 1) NOT NULL,
    [First]                        NVARCHAR (255) NULL,
    [Last]                         NVARCHAR (255) NULL,
    [Title]                        NVARCHAR (255) NULL,
    [Company]                      NVARCHAR (255) NULL,
    [Department]                   NVARCHAR (255) NULL,
    [Office]                       NVARCHAR (255) NULL,
    [Post Office Box]              NVARCHAR (255) NULL,
    [Address]                      NVARCHAR (255) NULL,
    [City]                         NVARCHAR (255) NULL,
    [State]                        NVARCHAR (255) NULL,
    [Zip code]                     NVARCHAR (255) NULL,
    [Country]                      NVARCHAR (255) NULL,
    [Phone]                        NVARCHAR (255) NULL,
    [Mobile Phone]                 NVARCHAR (255) NULL,
    [Pager Phone]                  NVARCHAR (255) NULL,
    [Home2 Phone]                  NVARCHAR (255) NULL,
    [Assistant Phone Number]       NVARCHAR (255) NULL,
    [Fax Number]                   NVARCHAR (255) NULL,
    [Telex Number]                 NVARCHAR (255) NULL,
    [Display name]                 NVARCHAR (255) NULL,
    [Email Type]                   NVARCHAR (255) NULL,
    [Email Address]                NVARCHAR (255) NULL,
    [Alias]                        NVARCHAR (255) NULL,
    [Assistant]                    NVARCHAR (255) NULL,
    [Send Rich Text]               BIT            DEFAULT ((0)) NULL,
    [Primary]                      NVARCHAR (255) NULL,
    [File As]                      NVARCHAR (255) NULL,
    [User Certificate]             NVARCHAR (255) NULL,
    [Home Address]                 NVARCHAR (255) NULL,
    [Business Address]             NVARCHAR (255) NULL,
    [Other Address]                NVARCHAR (255) NULL,
    [Journal]                      BIT            DEFAULT ((0)) NULL,
    [Web Page]                     NVARCHAR (255) NULL,
    [Business Address Street]      NVARCHAR (255) NULL,
    [Business Address City]        NVARCHAR (255) NULL,
    [Business Address State]       NVARCHAR (255) NULL,
    [Business Address Postal Code] NVARCHAR (255) NULL,
    [Business Address Country]     NVARCHAR (255) NULL,
    [Business Address PO Box]      NVARCHAR (255) NULL,
    [User Field 1]                 NVARCHAR (255) NULL,
    [User Field 2]                 NVARCHAR (255) NULL,
    [User Field 3]                 NVARCHAR (255) NULL,
    [User Field 4]                 NVARCHAR (255) NULL,
    [SSMA_TimeStamp]               ROWVERSION     NOT NULL,
    CONSTRAINT [International Reps$PrimaryKey] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [SSMA_CC$International Reps$Address$disallow_zero_length] CHECK (len([Address])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Alias$disallow_zero_length] CHECK (len([Alias])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Assistant Phone Number$disallow_zero_length] CHECK (len([Assistant Phone Number])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Assistant$disallow_zero_length] CHECK (len([Assistant])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Business Address City$disallow_zero_length] CHECK (len([Business Address City])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Business Address Country$disallow_zero_length] CHECK (len([Business Address Country])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Business Address PO Box$disallow_zero_length] CHECK (len([Business Address PO Box])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Business Address Postal Code$disallow_zero_length] CHECK (len([Business Address Postal Code])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Business Address State$disallow_zero_length] CHECK (len([Business Address State])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Business Address Street$disallow_zero_length] CHECK (len([Business Address Street])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Business Address$disallow_zero_length] CHECK (len([Business Address])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$City$disallow_zero_length] CHECK (len([City])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Company$disallow_zero_length] CHECK (len([Company])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Country$disallow_zero_length] CHECK (len([Country])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Department$disallow_zero_length] CHECK (len([Department])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Display name$disallow_zero_length] CHECK (len([Display name])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Email Address$disallow_zero_length] CHECK (len([Email Address])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Email Type$disallow_zero_length] CHECK (len([Email Type])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Fax Number$disallow_zero_length] CHECK (len([Fax Number])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$File As$disallow_zero_length] CHECK (len([File As])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$First$disallow_zero_length] CHECK (len([First])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Home Address$disallow_zero_length] CHECK (len([Home Address])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Home2 Phone$disallow_zero_length] CHECK (len([Home2 Phone])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Last$disallow_zero_length] CHECK (len([Last])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Mobile Phone$disallow_zero_length] CHECK (len([Mobile Phone])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Office$disallow_zero_length] CHECK (len([Office])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Other Address$disallow_zero_length] CHECK (len([Other Address])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Pager Phone$disallow_zero_length] CHECK (len([Pager Phone])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Phone$disallow_zero_length] CHECK (len([Phone])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Post Office Box$disallow_zero_length] CHECK (len([Post Office Box])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Primary$disallow_zero_length] CHECK (len([Primary])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$State$disallow_zero_length] CHECK (len([State])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Telex Number$disallow_zero_length] CHECK (len([Telex Number])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Title$disallow_zero_length] CHECK (len([Title])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$User Certificate$disallow_zero_length] CHECK (len([User Certificate])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$User Field 1$disallow_zero_length] CHECK (len([User Field 1])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$User Field 2$disallow_zero_length] CHECK (len([User Field 2])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$User Field 3$disallow_zero_length] CHECK (len([User Field 3])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$User Field 4$disallow_zero_length] CHECK (len([User Field 4])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Web Page$disallow_zero_length] CHECK (len([Web Page])>(0)),
    CONSTRAINT [SSMA_CC$International Reps$Zip code$disallow_zero_length] CHECK (len([Zip code])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[ID]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'ID';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[First]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'First';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Last]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Last';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Title]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Title';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Company]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Company';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Department]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Department';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Office]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Office';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Post Office Box]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Post Office Box';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Address]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[City]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[State]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Zip code]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Zip code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Country]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Phone]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Mobile Phone]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Mobile Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Pager Phone]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Pager Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Home2 Phone]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Home2 Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Assistant Phone Number]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Assistant Phone Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Fax Number]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Fax Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Telex Number]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Telex Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Display name]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Display name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Email Type]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Email Type';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Email Address]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Email Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Alias]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Alias';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Assistant]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Assistant';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Send Rich Text]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Send Rich Text';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Primary]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Primary';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[File As]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'File As';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[User Certificate]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'User Certificate';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Home Address]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Home Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Business Address]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Business Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Other Address]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Other Address';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Journal]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Journal';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Web Page]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Web Page';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Business Address Street]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Business Address Street';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Business Address City]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Business Address City';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Business Address State]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Business Address State';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Business Address Postal Code]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Business Address Postal Code';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Business Address Country]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Business Address Country';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[Business Address PO Box]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'Business Address PO Box';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[User Field 1]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'User Field 1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[User Field 2]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'User Field 2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[User Field 3]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'User Field 3';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[User Field 4]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'COLUMN', @level2name = N'User Field 4';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'MMTMain.[International Reps].[PrimaryKey]', @level0type = N'SCHEMA', @level0name = N'mmt', @level1type = N'TABLE', @level1name = N'International Reps', @level2type = N'CONSTRAINT', @level2name = N'International Reps$PrimaryKey';

