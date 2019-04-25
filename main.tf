terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "cdunlap"

    workspaces {
      name = "redis-fargate-demo"
    }
  }
  required_version = ">= 0.11.13"
}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.region}"
}
