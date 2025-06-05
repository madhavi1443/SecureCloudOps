variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "availability_zones" {
  default = ["us-east-1a", "us-east-1b"]
}

variable "ami_id" {
  default = "ami-0c2b8ca1dad447f8a" # Amazon Linux 2 for us-east-1
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "securecloudops-key" 
}

variable "app_instance_type" {
  default = "t2.micro"
}
