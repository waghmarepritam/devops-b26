provider "aws" {
  profile = "tf-admin"
  region  = "us-east-2" 
}

resource "aws_iam_user" "demo" {
  for_each = var.aws_iam_user1
  name = each.value
}
/* resource "aws_iam_user" "demo1" {
  name = var.aws_iam_user1.user2
  } */
#resource "aws_iam_user" "demo2" {
 # name = var.aws_iam_user1.user3
 # }
#resource "aws_iam_user" "demo3" {
 # name = var.aws_iam_user1.user4
 # }

