CREATE   PROCEDURE dbo.sp_RB_GetOrderTax
AS
BEGIN
    SET NOCOUNT ON;
    SELECT  o.OrderId,
            c.CustomerName,
            o.Amount,
            dbo.fn_RB_GetTax(o.Amount) AS TaxAmount
    FROM    dbo.tblRB_Order o
    JOIN    dbo.tblRB_Customer c ON c.CustomerId = o.CustomerId;
END