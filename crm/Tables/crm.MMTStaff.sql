CREATE TABLE [crm].[MMTStaff] (
    [FIRST NAME]                  NVARCHAR (21)  NULL,
    [LAST NAME]                   NVARCHAR (36)  NULL,
    [Full Name]                   NVARCHAR (25)  NULL,
    [ADDRESS1]                    NVARCHAR (71)  NULL,
    [ADDRESS2]                    NVARCHAR (71)  NULL,
    [CITY]                        NVARCHAR (18)  NULL,
    [STATE]                       NVARCHAR (5)   NULL,
    [ZIP]                         FLOAT (53)     NULL,
    [TELEPHONE]                   NVARCHAR (30)  NULL,
    [YOUR HOBBIES]                NVARCHAR (67)  NULL,
    [CHILD NAME]                  NVARCHAR (31)  NULL,
    [AGE]                         NVARCHAR (32)  NULL,
    [CHILD NAME1]                 NVARCHAR (31)  NULL,
    [AGE1]                        NVARCHAR (32)  NULL,
    [CHILD NAME2]                 NVARCHAR (31)  NULL,
    [AGE2]                        NVARCHAR (32)  NULL,
    [SPOUSE / SIGNIFICANT OTHER_] NVARCHAR (43)  NULL,
    [S/SO OCCUPATION]             NVARCHAR (64)  NULL,
    [S/SO HOBBIES]                NVARCHAR (MAX) NULL,
    [YOUR FAVORITE RESTAURANT]    NVARCHAR (55)  NULL,
    [YOUR FAVORITE VACATION_SP]   NVARCHAR (MAX) NULL,
    [YOUR FAVORITE LEISURE TIM]   NVARCHAR (MAX) NULL,
    [DISLIKES]                    NVARCHAR (69)  NULL,
    [OTHER INFORMATION YOU_WOU]   NVARCHAR (192) NULL,
    [Cell Phone]                  NVARCHAR (50)  NULL,
    [E-Mail]                      NVARCHAR (50)  NULL,
    [Web Page]                    NVARCHAR (50)  NULL,
    [Emergency Contact]           NVARCHAR (25)  NULL,
    [Emergency Number]            NVARCHAR (30)  NULL,
    [Emergency Contact2]          NVARCHAR (25)  NULL,
    [Emergency Number2]           NVARCHAR (30)  NULL,
    [SSMA_TimeStamp]              ROWVERSION     NOT NULL,
    CONSTRAINT [SSMA_CC$MMTStaff$ADDRESS1$disallow_zero_length] CHECK (len([ADDRESS1])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$ADDRESS2$disallow_zero_length] CHECK (len([ADDRESS2])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$AGE$disallow_zero_length] CHECK (len([AGE])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$AGE1$disallow_zero_length] CHECK (len([AGE1])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$AGE2$disallow_zero_length] CHECK (len([AGE2])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$Cell Phone$disallow_zero_length] CHECK (len([Cell Phone])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$CHILD NAME$disallow_zero_length] CHECK (len([CHILD NAME])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$CHILD NAME1$disallow_zero_length] CHECK (len([CHILD NAME1])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$CHILD NAME2$disallow_zero_length] CHECK (len([CHILD NAME2])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$CITY$disallow_zero_length] CHECK (len([CITY])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$DISLIKES$disallow_zero_length] CHECK (len([DISLIKES])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$E-Mail$disallow_zero_length] CHECK (len([E-Mail])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$Emergency Contact$disallow_zero_length] CHECK (len([Emergency Contact])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$Emergency Contact2$disallow_zero_length] CHECK (len([Emergency Contact2])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$Emergency Number$disallow_zero_length] CHECK (len([Emergency Number])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$Emergency Number2$disallow_zero_length] CHECK (len([Emergency Number2])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$FIRST NAME$disallow_zero_length] CHECK (len([FIRST NAME])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$Full Name$disallow_zero_length] CHECK (len([Full Name])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$LAST NAME$disallow_zero_length] CHECK (len([LAST NAME])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$OTHER INFORMATION YOU_WOU$disallow_zero_length] CHECK (len([OTHER INFORMATION YOU_WOU])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$S/SO HOBBIES$disallow_zero_length] CHECK (len([S/SO HOBBIES])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$S/SO OCCUPATION$disallow_zero_length] CHECK (len([S/SO OCCUPATION])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$SPOUSE / SIGNIFICANT OTHER_$disallow_zero_length] CHECK (len([SPOUSE / SIGNIFICANT OTHER_])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$STATE$disallow_zero_length] CHECK (len([STATE])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$TELEPHONE$disallow_zero_length] CHECK (len([TELEPHONE])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$Web Page$disallow_zero_length] CHECK (len([Web Page])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$YOUR FAVORITE LEISURE TIM$disallow_zero_length] CHECK (len([YOUR FAVORITE LEISURE TIM])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$YOUR FAVORITE RESTAURANT$disallow_zero_length] CHECK (len([YOUR FAVORITE RESTAURANT])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$YOUR FAVORITE VACATION_SP$disallow_zero_length] CHECK (len([YOUR FAVORITE VACATION_SP])>(0)),
    CONSTRAINT [SSMA_CC$MMTStaff$YOUR HOBBIES$disallow_zero_length] CHECK (len([YOUR HOBBIES])>(0))
);


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[FIRST NAME]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'FIRST NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[LAST NAME]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'LAST NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[Full Name]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'Full Name';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[ADDRESS1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'ADDRESS1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[ADDRESS2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'ADDRESS2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[CITY]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'CITY';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[STATE]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'STATE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[ZIP]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'ZIP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[TELEPHONE]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'TELEPHONE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[YOUR HOBBIES]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'YOUR HOBBIES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[CHILD NAME]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'CHILD NAME';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[AGE]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'AGE';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[CHILD NAME1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'CHILD NAME1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[AGE1]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'AGE1';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[CHILD NAME2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'CHILD NAME2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[AGE2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'AGE2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[SPOUSE / SIGNIFICANT OTHER_]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'SPOUSE / SIGNIFICANT OTHER_';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[S/SO OCCUPATION]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'S/SO OCCUPATION';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[S/SO HOBBIES]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'S/SO HOBBIES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[YOUR FAVORITE RESTAURANT]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'YOUR FAVORITE RESTAURANT';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[YOUR FAVORITE VACATION_SP]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'YOUR FAVORITE VACATION_SP';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[YOUR FAVORITE LEISURE TIM]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'YOUR FAVORITE LEISURE TIM';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[DISLIKES]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'DISLIKES';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[OTHER INFORMATION YOU_WOU]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'OTHER INFORMATION YOU_WOU';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[Cell Phone]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'Cell Phone';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[E-Mail]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'E-Mail';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[Web Page]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'Web Page';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[Emergency Contact]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'Emergency Contact';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[Emergency Number]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'Emergency Number';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[Emergency Contact2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'Emergency Contact2';


GO
EXECUTE sp_addextendedproperty @name = N'MS_SSMA_SOURCE', @value = N'CustCRM_be.[MMTStaff].[Emergency Number2]', @level0type = N'SCHEMA', @level0name = N'crm', @level1type = N'TABLE', @level1name = N'MMTStaff', @level2type = N'COLUMN', @level2name = N'Emergency Number2';

