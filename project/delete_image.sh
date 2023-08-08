#!/bin/bash

# Set your AWS region
REGION="eu-west-2"

# List ECR repositories
echo "Listing ECR repositories..."
REPOS=$(aws ecr describe-repositories --region $REGION --output text --query 'repositories[*].repositoryName')

# Print the list of repositories
echo "Available ECR repositories:"
echo "$REPOS"

# Iterate through repositories and list/delete images
for REPO_NAME in $REPOS; do
    # List images in the current repository
    echo "Listing images in $REPO_NAME..."
    IMAGES=$(aws ecr list-images --region $REGION --repository-name $REPO_NAME --output text --query 'imageIds[*].imageTag')

    # Print the list of images
    echo "Images in $REPO_NAME:"
    echo "$IMAGES"

    # Loop through images and delete them
    for IMAGE_TAG in $IMAGES; do
        echo "Deleting image $REPO_NAME:$IMAGE_TAG..."
        aws ecr batch-delete-image --region $REGION --repository-name $REPO_NAME --image-ids imageTag=$IMAGE_TAG
    done
done
