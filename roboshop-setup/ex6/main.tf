module "ec22" {
  for_each = var.instances
  source = "./ec22"
  component = each.value["name"]
  instance_type = each.value["type"]
  sg_id  = module.sg.sg_id
}

module "sg" {
  source = "./sg"
}

module "route53" {
  for_each = var.instances
  source = "./route53"
  component = each.value["name"]
  private_ip = module.ec22["cart"].private_ip
}

output "private-ip" {
  value = module.ec22
}



