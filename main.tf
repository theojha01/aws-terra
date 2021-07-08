resource "aws_instance" "os1" {
ami = "ami-010aff33ed5991201"
instance_type = "t2.micro"
tags = {
   Name = "My OS"
    }
}

output "aakash_os" {
value = aws_instance.os1.availability_zone
}

