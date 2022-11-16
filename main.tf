resource "aws_vpc" "vpc" {
  tags               = merge(var.tags, {})
  enable_classiclink = false
  cidr_block         = var.vpc_cidr
}

resource "aws_autoscaling_group" "asg" {
  min_size             = var.min_asg_capacity
  max_size             = var.max_asg_capacity
  launch_configuration = aws_launch_configuration.Panthera_Cluster.name

  availability_zones = [
    "us-east-2a",
    "us-east-2b",
  ]
}

resource "aws_instance" "t2_c_c" {
  tags              = merge(var.tags, {})
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
    aws_security_group.security_group.id,
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "t2_c_c_c_c_1_c" {
  tags              = merge(var.tags, {})
  instance_type     = "t2.micro"
  availability_zone = "us-east-2b"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "t2_c_c_2_c" {
  tags              = merge(var.tags, {})
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "t2_c_c_1_c" {
  tags              = merge(var.tags, {})
  instance_type     = "t2.micro"
  availability_zone = "us-east-2b"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "t2" {
  tags              = merge(var.tags, {})
  instance_type     = "t2.micro"
  availability_zone = "us-east-2a"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "aws_instance" "t2_c_c_c_c" {
  tags              = merge(var.tags, {})
  instance_type     = "t2.micro"
  availability_zone = "us-east-2b"
  ami               = var.ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "aws_launch_configuration" "Panthera_Cluster" {
  instance_type = "t2.micro"
  image_id      = var.panthera_debian_ami

  security_groups = [
    aws_security_group.security_group.id,
  ]
}

resource "custom" "custom_15" {
}

