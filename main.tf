provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "jenkins_nodes" {
  for_each = var.instances

  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  security_groups = [var.security_group]

  tags = {
    Name = each.key
  }
}

