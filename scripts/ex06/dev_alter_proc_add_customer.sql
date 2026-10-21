-- EX03 - Run on PE_Eval_DEV (SSMS): "official" change to EX_ADD_CUSTOMER
-- Adds a validation: email is mandatory and is stored in lowercase.
CREATE OR ALTER PROCEDURE dbo.EX_ADD_CUSTOMER
    @p_id    INT,
    @p_first NVARCHAR(50),
    @p_last  NVARCHAR(50),
    @p_email NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    IF @p_email IS NULL
        THROW 50001, N'EMAIL is mandatory', 1;

    INSERT INTO dbo.EX_CUSTOMERS (CUSTOMER_ID, FIRST_NAME, LAST_NAME, EMAIL)
    VALUES (@p_id, @p_first, @p_last, LOWER(@p_email));
END;
GO
