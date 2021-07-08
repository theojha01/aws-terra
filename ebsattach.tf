resource "aws_ebs_volume" "ananya_store" {
 availability_zone = aws_instance.os1.availability_zone
 size = 1
 tags = {
   Name = "Aakash's storage"
 }
}

output "ebs_out" {
value = aws_ebs_volume.aakash_storage.id
}

resource "aws_volume_attachment" "ec2_attach" {
 device_name = "/dev/sdh"
 instance_id = aws_instance.os1.id
 volume_id  = aws_ebs_volume.aakash_storage.id
}
