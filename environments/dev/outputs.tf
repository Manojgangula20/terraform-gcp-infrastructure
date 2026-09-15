output "network_name" {
  description = "Name of the provisioned VPC"
  value       = module.network.network_name
}

output "subnet_name" {
  description = "Name of the provisioned subnet"
  value       = module.network.subnet_name
}

output "service_account_email" {
  description = "Compute service account email"
  value       = module.iam.service_account_email
}

output "instance_name" {
  description = "Compute Engine instance name"
  value       = module.compute.instance_name
}
