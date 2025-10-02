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
    master  = "t2.medium"
    dev     = "t2.medium"
    prod    = "t2.medium"
  }
}

# New variable to control the EC2 Name tags
variable "instance_tags" {
  type = map(string)
  default = {
    master  = "jenkins-master"
    dev     = "Dev-Slave"
    prod    = "Prod-Slave"
  }
}

