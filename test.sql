SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SET QUOTED_IDENTIFIER ON 
SET ANSI_NULLS ON 
IF EXISTS 
(
  SELECT * 
  FROM   sys.columns 
  WHERE  object_id = OBJECT_ID(N'[PersonalLoans].[AgentLoanProducts]') 
         AND name = 'Deactivated'
)
BEGIN 
    ALTER TABLE PersonalLoans.AgentLoanProducts
    DROP COLUMN Deactivated;
END
