-- EX02 - Run on PE_Eval_DEV (SSMS) after dev_create_customers.sql: creates the EX_ADD_CUSTOMER procedure
CREATE OR ALTER PROCEDURE dbo.EX_ADD_CUSTOMER
    @p_id    INT,
    @p_first NVARCHAR(50),
    @p_last  NVARCHAR(50),
    @p_email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.EX_CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, EMAIL)
    VALUES (@p_id, @p_first, @p_last, @p_email);
END;
GO
