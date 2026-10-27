-- 3. Procedure
/*
Author      : Charu Sharma
Create date : 2026-10-27
Purpose     : Return active customers, optionally filtered by city
*/
CREATE   PROCEDURE [dbo].[aaj_ka_arjun_27]
    @customername VARCHAR(50) = NULL,
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
    WHERE 
	CustomerName=@customername
       --OR v.City = @City
    ORDER BY v.CustomerName;
END