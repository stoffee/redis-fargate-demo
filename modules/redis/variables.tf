
variable "aws_access_key" {
  description = "access key"
}

variable "aws_secret_key" {
  description = "secret key"
}

variable "region" {
  description = "region"
}

variable "vpc_cidr_block" {
  description = "The top-level CIDR block for the VPC."
  default     = "10.1.0.0/16"
}

variable "cidr_blocks" {
  description = "The CIDR blocks to create the workstations in."
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
}

variable "namespace" {
  description = "Default namespace"
  default = "cd-redis-fargate-demo"
}

variable "cluster_id" {
  description = "Id to assign the new cluster"
}


variable "ssh_key_name" {
  description = "AWS ssh keyname"
}
#variable "public_key_path" {
#  description = "Path to public key for ssh access"
#  default     = "~/.ssh/id_rsa.pub"
#}

variable "node_groups" {
  description = "Number of nodes groups to create in the cluster"
  default     = 3
}
