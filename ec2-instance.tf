locals{
  local_project = "b16-project"
}
resource "aws_instance" "web-server" {
  ami           = "ami-097a2df4ac947655f"
  instance_type = var.instance_type

  tags = {
    Name = "${local.local_project}.Website-Host"
  }
}
resource "aws_instance" "webserver1" {
    ami           = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"

  tags = {
    Name = "${local.local_project}.Host"
  }
    
}

resource "aws_instance" "dBinstacne" {
    ami           = "ami-097a2df4ac947655f"
  instance_type = "t2.micro"
  key_name = "h-ohio-keys"
  security_groups = ["db_host"]

  tags = {
    Name = "${local.local_project}.database"
  }

}


resource "aws_security_group" "db_host" {
  name        = "db_host"
  description = "Security group"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  tags = {
    Name = "${local.local_project}.db_host"
  }
}
