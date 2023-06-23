variable "managers" {
  description = "Count of manager nodes"
  type        = number
  default     = 1
}

variable "workers" {
  description = "Count of worker nodes"
  type        = number
  default     = 2
}

#variable "instance_family_image" {
#  description = "Instance image"
#  type        = string
#  default     = "ubuntu-2204-lts"
#}
#
#variable "vpc_subnet_id" {
#  description = "VPC subnet network id"
#  type        = string
#}

variable "ssh_credentials" {
  description = "Credentials for connect to instances"
  type        = object({
    user        = string
    private_key = string
    pub_key     = string
  })
  default     = {
    user        = "testadmin"
    private_key = "./terraform"
    pub_key     = "./terraform.pub"
  }
}