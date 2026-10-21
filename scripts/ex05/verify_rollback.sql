-- Exercise 5 - Verify on PE_Eval_QA that the rollback removed the EX02 objects
SELECT name, type_desc, modify_date
FROM   sys.objects
WHERE  object_id IN (OBJECT_ID(N'dbo.EX_ADD_CUSTOMER'), OBJECT_ID(N'dbo.EX_CUSTOMERS'));
-- Expected result: no rows
GO
