-- Exercise 4 - Verification on PE_Eval_QA
EXEC dbo.EX_ADD_CUSTOMER @p_id = 1, @p_first = N'Ana', @p_last = N'Perez', @p_email = N'ana@test.com';
SELECT * FROM dbo.EX_CUSTOMERS;
GO
