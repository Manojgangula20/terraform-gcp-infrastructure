output "service_account_email" {
  description = "Email address of the compute service account"
  value       = google_service_account.compute.email
}

output "service_account_id" {
  description = "ID of the compute service account"
  value       = google_service_account.compute.id
}
