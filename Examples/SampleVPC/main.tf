resource "noahcloud_vpc" "main" {
  name = "${var.long_name}"
  cidr_block = "${var.vpc_cidr}"
}

resource "noahcloud_vswitch" "main" {
  vpc_id = "${noahcloud_vpc.main.id}"
  count = "${length(split(",", var.availability_zones))}"
  cidr_block = "${lookup(var.cidr_blocks, "az${count.index}")}"
  availability_zone = "${var.availability_zones}"
  depends_on = [
    "noahcloud_vpc.main"]
}

resource "noahcloud_nat_gateway" "main" {
  vpc_id = "${noahcloud_vpc.main.id}"
  spec = "Small"
  bandwidth_packages = [
    {
      ip_count = 1
      bandwidth = 5
      zone = "${var.availability_zones}"
    }
  ]
  depends_on = [
    "noahcloud_vswitch.main"]
}
