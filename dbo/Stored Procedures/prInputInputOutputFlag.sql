
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[prInputInputOutputFlag]
	@var1 int,
	@var2 int,
	@var3Out int OUTPUT,
	@var4Out int OUTPUT
AS
BEGIN

	SELECT @var3Out = @var1 + @var2
	SELECT @var4Out = @var1 * 2 + @var2 * 2
	
END

