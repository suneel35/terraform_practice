/*
provider "aws" {
 region     = "us-west-2"
 access_key = "AKIATJTVDTJNLF5I5SXW"
 secret_key = "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"
 #version    = "~> 2.7"
}

provider "aws" {
alias = "mumbai"
 region     = "ap-south-1"
 access_key = "AKIATJTVDTJNLF5I5SXW"
 secret_key = "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"
 #version    = "~> 2.7"
}
*/

provider "aws" {
 region     = "us-west-2"
 access_key = "AKIATJTVDTJNLF5I5SXW"
 secret_key = "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"
 #version    = "~> 2.7"
}

provider "aws" {
 alias = "aws02"
 region     = "ap-soyth-1"
 access_key = "AKIATJTVDTJNLF21wetrf"
 secret_key = "2jYlM9ugITZeqacp/seQADbfwtIsoT4KfHncgWYM"
 profile = "account02"
 #version    = "~> 2.7"
}
