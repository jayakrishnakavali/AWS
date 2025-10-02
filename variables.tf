variable "aws_region" {
  default = "us-east-1"
}

variable "ami_id" {
  default = "ami-0fb0b230890ccd1e6" # Provided AMI ID
}

variable "instance_type" {
  default = "t2.medium"
}

variable "key_name" {
  default = "demokey" # Provided keypair
}

variable "security_group" {
  default = "demosg" # Provided security group
}

variable "instances" {
  default = {
    jenkins-master     = "t2.medium"
    jenkins-dev-slave  = "t2.medium"
    jenkins-prod-slave = "t2.medium"
  }
}

