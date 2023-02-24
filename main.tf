provider "aws" {
  region = var.region
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
