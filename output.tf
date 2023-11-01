output "public_dns" {
  value = aws_instance.terra_instance.public_dns
}

output "public_ip" {
  value = aws_instance.terra_instance.public_ip
}

output "private_dns" {
  value = aws_instance.terra_instance.private_dns
}

output "private_ip" {
  value = aws_instance.terra_instance.private_ip
}

output "src_sg" {
  value = var.src_sg == "" ? aws_security_group.terra_sg.id : ""
}