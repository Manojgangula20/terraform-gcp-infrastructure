module "network" {
  source = "../../modules/network"

  network_name = "terraform-demo-vpc"
  subnet_name  = "terraform-demo-subnet"
  region       = var.region
  subnet_cidr  = "10.10.0.0/24"
}

module "iam" {
  source = "../../modules/iam"

  project_id                   = var.project_id
  service_account_id           = "terraform-demo-vm"
  service_account_display_name = "Terraform Demo VM Service Account"
}

module "compute" {
  source = "../../modules/compute"

  instance_name         = "terraform-demo-vm"
  machine_type          = "e2-micro"
  zone                  = var.zone
  subnet_id             = module.network.subnet_id
  service_account_email = module.iam.service_account_email
}
