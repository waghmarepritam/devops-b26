variable "aws_iam_user1" {
  type = set(string)
  default = ["ASHISH","mayur", "manoj", "deepak", "sachin"]

  
        
}

variable "instance_type" {

  default = "t3.micro"
       
}
