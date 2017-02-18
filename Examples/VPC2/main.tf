provider "aws" { region = "${var.aws_region}" }
module "vpc" {
  source = "git::ssh://git@gitserver/org/my-tf-modules//vpc" // double slash intended. See terraform documentation
  mymod_region = "${var.aws_region}"
  mymod_az = "${var.az}"
  mymod_vpc_cidr = "${var.vpc_cidr}"
  mymod_private_subnet = "${var.private_subnet}"
  mymod_public_subnet = "${var.public_subnet}"
}
