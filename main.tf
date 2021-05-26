provider "aws" {
  region = var.region
}

data "aws_ssm_parameter" "cathay-ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

# v1.0.0

resource "aws_instance" "name" {
  # use the value provided by data block1
  ami = data.aws_ssm_parameter.cathay-ami.value
  # use the value provided by the modules ouput
  instance_type     = var.instance-type
  availability_zone = var.instance-az
  count             = var.instance-count

  tags = {
    # this is an example of how we can use environment values in our resources
    Name = var.server-name
  }

}
