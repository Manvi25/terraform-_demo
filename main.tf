locals {
  config = jsondecode(file("./config.json"))
}

#comment added
#2nd comment added
module "ec2_instance" {
  source = "./submodule/ec2_instance"
  for_each = { for idx, ec2 in local.config.ec2 : idx => ec2 }
  instance_config = each.value
}