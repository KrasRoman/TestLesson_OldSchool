-- =============================================
-- Author:		Роман Василич
-- Create date: 2019.11.27
-- Description:	Добавление должности
-- =============================================
CREATE PROCEDURE PR_PositionAdd
	@p_name as varchar(max)
AS
BEGIN
	SET NOCOUNT ON;
    
	declare @v_uid as uniqueidentifier;

	set @v_uid = NEWID();

	if @p_name!=''
		begin

			declare @v_cnt as int;
			select @v_cnt = COUNT(*) from [dbo].[Position] where UPPER(Name)=UPPER(@p_name);
			
			if @v_cnt >0
				begin
					select 1 as Code, 'Уже есть такая позиция' as Info;
				end
				else
				begin
					INSERT INTO [dbo].[Position]
						([Uid]
						,[Name])
					VALUES
						(@v_uid
						,@p_name);

					select 0 as Code, 'Позиция успешно добавлена' as Info;
					select Uid, Name from [dbo].[Position] where Uid = @v_uid;
				end;
		end
		else
		begin
			select 2 as Code, 'Не задано наименование позиции' as Info;
		end;

END