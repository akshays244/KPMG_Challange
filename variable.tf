variable "tenancy_ocid" {default="ocid1.tenancy.oc1..aaaaaaaap7s55yclcbvrvb25x3dssvtqin4v2zzxwrilf3fwhx3ik5h6gpga"}
variable "region" {default = "us-ashburn-1"}
variable "compartment_ocid" {default = "ocid1.compartment.oc1..aaaaaaaa3ictiehcm75q7qglm45yg6tdknl2cpf66larh2euawl24akaznaq"}



#we have removed fingerprints 

data "oci_identity_availability_domains" "ashburn" {
  compartment_id       = "${var.tenancy_ocid}"
}

### Network Variables ##### 

variable "vcn_cidr_block" {
  default = "10.0.0.0/16"
}

variable "dns_label_vcn" {
  default = "gbusimulator"
}

variable "subnet_cidr" {
  default = "10.0.0.0/24"
}

variable "instance_shape" {
  default = "VM.Standard2.1"
}

variable "vcn_name" {
  default ="ocid1.vcn.oc1.iad.amaaaaaawt2qieiawgluxxx2spysou4smvbwv6okv44khacoxxgakpr473ba"
}

variable "subnet_ocid"{
  default="ocid1.subnet.oc1.iad.aaaaaaaacwlpj4nuuaqeocqwcfh75wh4u6fcjpc5iqmtsigaij5hiytpipka"
}

variable "network_compartment"{
  default="ocid1.compartment.oc1..aaaaaaaajbueiljxibxlvifzzvqxrkp5jwg5td3cguqmyjumr2ohke5mskhq"

}
