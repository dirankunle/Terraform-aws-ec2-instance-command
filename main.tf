provider "aws" {
  region = "us-east-1"
}

# resource "provider" "webserver" {
#    config options..
#    key = "value"
#    key = "value"
# }


resource "aws_instance" "webserver" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"

  tags = {
    Name = "adekunle webserver"
  }
}