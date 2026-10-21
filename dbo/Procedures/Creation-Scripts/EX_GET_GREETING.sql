/*
Author      : Charu Sharma
Create date : 2026-10-21
Purpose     : Return a greeting with the current database name and server date/time
*/
CREATE   PROCEDURE dbo.EX_GET_GREETING
    @Name VARCHAR(100) = 'Team'
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        'Hello ' + @Name   AS Greeting,
        DB_NAME()          AS DatabaseName,
        GETDATE()          AS ServerDateTime;
END