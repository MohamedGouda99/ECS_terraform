#!/bin/bash

# Set your AWS credentials if not already set in your environment
# export AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY"
# export AWS_SECRET_ACCESS_KEY="YOUR_SECRET_KEY"
# export AWS_DEFAULT_REGION="us-west-2"  # Replace with your desired region

# Replace with your S3 bucket name
BUCKET_NAME="sprints-remote-statefile"

# Replace with your local Terraform state file name
STATE_FILE="terraform.tfstate"

# Upload the state file to S3 bucket
aws s3 cp "$STATE_FILE" "s3://$BUCKET_NAME/"

# Print a message indicating the state file upload status
if [ $? -eq 0 ]; then
  echo "Terraform state file uploaded successfully to S3 bucket: $BUCKET_NAME"
else
  echo "Failed to upload Terraform state file to S3 bucket: $BUCKET_NAME"
fi
