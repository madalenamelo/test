SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
syntax error at or near "ON"
SET QUOTED_IDENTIFIER ON 
syntax error at or near "ON"
SET ANSI_NULLS ON 
syntax error at or near "IF"
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