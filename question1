/* Instances -1 */
resource "oci_core_instance" "DBserver1" {
  availability_domain = "${lookup(data.oci_identity_availability_domains.ashburn.availability_domains[0],"name")}"
  compartment_id      = "${var.compartment_ocid}"
  display_name        = "DBserver1"
  shape               = "${var.instance_shape}"
  subnet_id           = "${data.oci_core_subnets.test_subnets.subnets[0].id}"

  source_details {
    source_type = "image"
    source_id   = "image_OCID_for_this_region"
  }

}
output "terraform-server-1" {
  value = ["${oci_core_instance.DBserver1.private_ip}"]
}

data "oci_core_subnets" "test_subnets" {
    compartment_id = var.network_compartment
}
output "subnets" {
  value = "${data.oci_core_subnets.test_subnets.subnets}"
}

##################################################

/* Instances -2  */
resource "oci_core_instance" "informappserver-2" {
  availability_domain = "${lookup(data.oci_identity_availability_domains.ashburn.availability_domains[0],"name")}"
  compartment_id      = "${var.compartment_ocid}"
  display_name        = "informApp-2"
  shape               = "${var.instance_shape}"
  subnet_id           = "${data.oci_core_subnets.test_subnets.subnets[0].id}"

  source_details {
    source_type = "image"
    source_id   = "ocid1.image.oc1.iad.aaaaaaaavwoujaxlziarwiea7biybcvwvlutcrcyz4aac5dfgtgkxen4uj5q"
  }

}
output "terraform-server-2" {
  value = ["${oci_core_instance.informappserver-2.public_ip}"]
}
