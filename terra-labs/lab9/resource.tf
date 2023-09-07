terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "rajeevtestbucket1"
    dynamodb_table = "devopsmonks-terraform-state-lock"
    key            = "state-lock-storage.keypath"
    region         = "eu-west-2"
    profile        = "terraform"
    # access_key = "<aws_access_key>"
    # secret_key = "<aws_secret_key>"
  }
}