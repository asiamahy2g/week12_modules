

output "public-dns" {
  value = aws_instance.ec2-demo.public_dns
}

output "instance_id" {
  value = aws_instance.ec2-demo.id

}

output "public-ip" {
  value = aws_instance.ec2-demo.public_ip

}