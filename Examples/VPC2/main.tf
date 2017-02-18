provider "aws" { region = "${var.aws_region}" }
module "vpc" {
  source = "git::ssh://git@gitserver/org/my-tf-modules//vpc" // double slash intended. See terraform documentation
  noah_region = "${var.aws_region}"
  noah_az = "${var.az}"
  noah_vpc_cidr = "${var.vpc_cidr}"
  noah_private_subnet = "${var.private_subnet}"
  noah_public_subnet = "${var.public_subnet}"
}
