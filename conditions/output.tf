output "public_ip" {
    value = aws_instance.ec2_instance.public_ip
    sensitive = false
    description = "This is the public ip of instance created"
}