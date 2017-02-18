resource "aws_instance" "node1" {
  ami = "${var.ami}"
  subnet_id = "${module.vpc.private_subnet_id}"
}
