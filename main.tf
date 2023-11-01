resource "aws_instance" "terra_instance" {
  # for_each          = tomap({ "1" = "${var.aws_region}a", "2" = "${var.aws_region}b" })
  instance_type     = "t3.micro"
  # availability_zone = each.value
  availability_zone = var.az
  ami               = "ami-06018068a18569ff2"
  # subnet_id         = aws_subnet.terra_public_subnet[tonumber(each.key) - 1].id
  subnet_id = var.subnet_id
  key_name = var.key_pair
  security_groups = [ aws_security_group.terra_sg.id ]
  tags = {
    Name      = "terra_instance_bo_06"
    createdBy = "terraform"
  }
}

resource "aws_security_group" "terra_sg" {
  description = "Allow ssh inbound traffic"
  vpc_id      = var.vpc_id

  ingress {
    description      = "Allow SSH"
    protocol         = "tcp"
    from_port = 22
    to_port = 22
    cidr_blocks      = var.src_sg != "" ? tolist([]) : tolist(["0.0.0.0/0"])
    security_groups  = var.src_sg != "" ? tolist([var.src_sg]) : tolist([])
  }
  
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}