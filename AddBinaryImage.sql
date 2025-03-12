UPDATE DataStoreDB.dbo.Questions
SET image_data = (
	SELECT BulkColumn
	FROM OPENROWSET(BULK 
	N'C:\Users\shind\OneDrive\Документы\GitHub\Quizik_local\PresentationLayer\wwwroot\img\questions\WWII\Torch.jpg', SINGLE_BLOB) AS ImageSource
)
WHERE question_id = 51;