output "instance_name" {
  description = "Name of the Compute Engine instance"
  value       = google_compute_instance.vm.name
}

output "instance_id" {
  description = "ID of the Compute Engine instance"
  value       = google_compute_instance.vm.id
}

output "instance_self_link" {
  description = "Self-link of the Compute Engine instance"
  value       = google_compute_instance.vm.self_link
}
