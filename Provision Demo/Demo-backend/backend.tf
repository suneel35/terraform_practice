terraform {
  backend "s3" {
    bucket = "demo"
    key = "demo.tfstate"
    region = "us-west-2"
    access_key = "AKIATJTVDTJNLF5I5SXW"
    secret_key = "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"
    #dynamodb = "s3-demo-lock" this is for locking time used
    }
}
