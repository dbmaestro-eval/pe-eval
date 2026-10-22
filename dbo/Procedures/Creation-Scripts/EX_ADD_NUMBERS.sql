/*
Author      : Bharat Prajapati
Create date : 2026-10-21
Purpose     : Add two numbers and return the result with the calculation date
*/
CREATE   PROCEDURE dbo.EX_ADD_NUMBERS
    @Num1 INT,
    @Num2 INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        @Num1          AS Num1,
        @Num2          AS Num2,
        @Num1 + @Num2  AS Total,
        GETDATE()      AS CalculatedOn;
END