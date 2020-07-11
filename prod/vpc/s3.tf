terraform {
  backend "s3" {
    bucket = "masterbucket01"
    key    = "prod/vpc/tfstate"
    region = "us-west-2"
  }
}

/*
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "masterbucket01"
    key    = "env:/prod/vpc/tfstate"
    region = "us-west-2"
  }
}*/
