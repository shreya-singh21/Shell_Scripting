@echo off
set /p BUCKET_NAME="Enter the name of the bucket you want to delete: "

aws s3 rb s3://%BUCKET_NAME% --force

echo Bucket "%BUCKET_NAME%" has been deleted.
pause
