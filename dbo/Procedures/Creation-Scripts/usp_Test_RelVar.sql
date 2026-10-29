CREATE   PROCEDURE dbo.usp_Test_RelVar
AS
BEGIN
    SET NOCOUNT ON;
    SELECT N'LNK_DEV' AS LinkedServerUsed, t.name AS App2TableName
    FROM [LNK_DEV].[App2_TEST].sys.tables AS t;
END