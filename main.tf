provider "aws" {
  region = "us-east-2"
}

# resource "<PROVIDER_TYPE>" "<NAME>" {[CONFIG...]}
resource "aws_instance" "myec2" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
