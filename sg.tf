module "dev_sg_1" {
   source  = "app.terraform.io/athul_enterprice/sg/modules"
  version = "1.0.0"
  vpc_name      = module.dev_vpc_1.vpc_name
  vpc_id        = module.dev_vpc_1.vpc_id
  environment   = module.dev_vpc_1.environment
  service_ports = ["80", "443", "445", "8080", "22", "3389"]
}