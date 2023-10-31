resource "aws_subnet" "terra_public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.cidr_block
  availability_zone       = "ap-southeast-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name"   = "terra_pub_subnet"
    createBy = "terraform"
  }
}

# resource "aws_subnet" "terra_public_subnet" {
#   count                   = 2
#   vpc_id                  = aws_vpc.terra_vpc.id
#   cidr_block              = "10.0.${count.index}.0/24"
#   availability_zone       = "${var.aws_region}${count.index % 2 == 0 ? "a" : "b"}"
#   map_public_ip_on_launch = true
#   tags = {
#     "Name"   = "terra_pub_subnet${count.index + 1}"
#     createBy = "terraform"
#   }
# }
