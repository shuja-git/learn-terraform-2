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
  source = "./route53"
}

output "private-ip" {
  value = module.route53
}



