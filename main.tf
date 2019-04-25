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


module "redis" {
  # When using these modules in your own templates, you will need to use a Git URL with a ref attribute that pins you
  # to a specific version of the modules, such as the following example:
  # source = "modules/vault-cluster"
  source = "git::git@github.com:stoffee/redis-fargate-demo.git//modules/redis"


  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.region}"

}
