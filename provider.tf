provider "aws" {
  region  = "us-east-1"
  profile = "production"
}


provider "aws" {
  alias   = "west-region"
  region  = "us-west-1"
  profile = "production"
}