# Define the AWS provider configuration
# This block specifies the AWS region and profile to use
# region: The AWS region to operate in, as defined by the "aws_region" variable
# profile: The AWS profile to use for authentication (in this case, "default")

provider "aws" {
  region  = var.aws_region
  profile = "default"
}
