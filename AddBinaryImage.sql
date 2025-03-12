UPDATE DataStoreDB.dbo.Questions
SET image_data = (
	SELECT BulkColumn
	FROM OPENROWSET(BULK 
	N'C:\Users\Daniil\Documents\GitHub\Quizik_local\PresentationLayer\wwwroot\img\questions\WWII\German_submarin.jpg', SINGLE_BLOB) AS ImageSource
)
WHERE question_id = 51;