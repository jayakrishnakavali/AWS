resource "aws_instance" "jenkins_nodes" {
  for_each = var.instances

  ami           = var.ami_id
  instance_type = each.value
  key_name      = var.key_name
  security_groups = [var.security_group]

  tags = {
    Name = var.instance_tags[each.key]
  }
}

