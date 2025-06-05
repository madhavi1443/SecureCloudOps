output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "s3_bucket_name" {
  value = aws_s3_bucket.secure_storage.bucket
}

output "private_ec2_id" {
  value = aws_instance.private_ec2.id
}
