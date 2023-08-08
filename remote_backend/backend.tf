terraform {
    backend "s3" {
        bucket         = "sprints-remote-statefile"
        key            = "terraform.tfstate"
        region         = "eu-west-2"
        dynamodb_table = "sprints-locks"
        encrypt        = true
    }
}