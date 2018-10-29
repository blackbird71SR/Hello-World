--Useable text in future work or exporting data
SELECT 'Hello World';

--Displayed only on the console, not returned to program, helpful for quick debugs
PRINT 'Hello World';

-- Using variables
DECLARE @helloWorld nvarchar(12);
SET @helloWorld = 'Hello World!';
SELECT @helloWorld;