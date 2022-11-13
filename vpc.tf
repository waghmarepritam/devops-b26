resource "aws_vpc" "project" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "${local.local_project}.Project"
  }
}