-- Exercise 6 - MANUAL "hotfix" outside DBmaestro on PE_Eval_QA, to generate drift
-- Changes the procedure to store the email in uppercase.
CREATE OR ALTER PROCEDURE dbo.EX_ADD_CUSTOMER
    @p_id    INT,
    @p_first NVARCHAR(50),
    @p_last  NVARCHAR(50),
    @p_email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.EX_CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, EMAIL)
    VALUES (@p_id, @p_first, @p_last, UPPER(@p_email));
END;
GO
