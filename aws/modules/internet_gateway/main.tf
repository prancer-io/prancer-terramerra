resource "aws_internet_gateway" "gateway" {
  vpc_id = var.vpc_id
  tags   = var.tags
}
