module "ec2" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["name"]
  instance_type = each.value["type"]
}

module "sg" {
  source = "./sg"
}

output "sg_id" {
  value = module.sg
}
