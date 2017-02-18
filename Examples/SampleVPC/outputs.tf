output "vpc_id" {
  value = "${noahcloud_vpc.main.id}"
}

output "vswitch_ids" {
  value = "${join(",", noahcloud_vswitch.main.*.id)}"
}

output "availability_zones" {
  value = "${join(",",noahcloud_vswitch.main.*.availability_zone)}"
}
