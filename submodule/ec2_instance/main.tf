resource "aws_instance" "ec2_instance" {
  ami           = var.instance_config["ami_value"]
  instance_type = var.instance_config["instance_type_value"]

}