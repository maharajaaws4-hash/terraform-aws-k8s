provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "tf-state-maharaja-123"
    key    = "k8s/terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_instance" "demo" {
  ami           = "ami-0f58b397bc5c1f2e8" # Ubuntu (update if needed)
  instance_type = "t2.micro"

  tags = {
    Name = "my-first-terraform-vm"
  }
}