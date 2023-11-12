module "webserver" {
    source = "../modules/ec2"
    ami ="ami-05c13eab67c5d8861"
    region = "us-east-1"
    instance_type = "t3.small"
    Name = "Dev-module"
  
}

output "public-ip" {
    value = module.webserver.public-ip
  
}

output "public_dns" {
    value = module.webserver.public-dns
  
}

output "instance_id" {
  
  value = module.webserver.instance_id
}