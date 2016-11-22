// module terraform_aws_vpc

// The path to the project in VCS.
variable "project_path" {
  type    = "string"
  default = ""
}

// The network address for the VPC.
variable "vpc_network_address" {
  type = "string"
}

// Network addresses for subnets to create this VPC.
// 
// If more than one address is specified, the subnets are created across all
// available availability zones sequentially, wrapping around when the last
// availability zone for the region is reached.
variable "public_subnet_addresses" {
  type = "list"
}

// Default new instances to have public IP addresses.
variable "map_public_addresses" {
  type    = "string"
  default = "true"
}
