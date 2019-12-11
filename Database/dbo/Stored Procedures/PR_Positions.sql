-- =============================================
-- Author:		Роман Василич
-- Create date: 2019.11.27
-- Description:	Получение списка должностей
-- =============================================
CREATE PROCEDURE [dbo].[PR_Positions]
AS
BEGIN
	SET NOCOUNT ON;
   
		select 0 as Code, 'OK' as Info;
		select Uid, Name from [dbo].[Position];

END