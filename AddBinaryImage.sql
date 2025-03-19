UPDATE DataStoreDB.dbo.HardQuestions
SET image_data = (
	SELECT BulkColumn
	FROM OPENROWSET(BULK 
	N'C:\Users\shind\OneDrive\Документы\GitHub\Quizik_local\PresentationLayer\wwwroot\img\questions\WWII\AK-47.jpg', SINGLE_BLOB) AS ImageSource
)
WHERE question_id = 30;