provider "aws" {
  region = "${var.aws_region}"
}

module "vpc" {
  source           = "../../vpc"
  name             = "${var.project_name}"
  aws_key_name     = "vpc-test"
  aws_key_location = "${file("vpc-test.pem")}"
}
