@echo off

:: Set the name of your new S3 bucket
set BUCKET_NAME=my-bucketghj

:: Set the region for your new S3 bucket
set BUCKET_REGION=ap-south-1

:: Create the new S3 bucket
aws s3api create-bucket ^
--bucket %BUCKET_NAME% ^
--region %BUCKET_REGION% ^
--create-bucket-configuration LocationConstraint=%BUCKET_REGION%

:: Confirm the new bucket was created
echo S3 bucket %BUCKET_NAME% created in region %BUCKET_REGION%.

pause