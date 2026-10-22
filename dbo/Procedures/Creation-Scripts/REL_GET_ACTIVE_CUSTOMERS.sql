-- 3. Procedure
/*
Author      : Charu Sharma
Create date : 2026-10-22
Purpose     : Return active customers, optionally filtered by city
*/
CREATE   PROCEDURE dbo.REL_GET_ACTIVE_CUSTOMERS
    @City VARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        v.CustomerId,
        v.CustomerName,
        v.City,
        v.CreatedOn
    FROM dbo.vw_REL_ActiveCustomers v
    WHERE @City IS NULL
       OR v.City = @City
    ORDER BY v.CustomerName;
END