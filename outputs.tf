output "jenkins_nodes_ips" {
  description = "Public IPs of all Jenkins nodes"
  value       = { for name, inst in aws_instance.jenkins_nodes : name => inst.public_ip }
}

