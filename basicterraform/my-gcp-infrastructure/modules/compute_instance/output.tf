output "instance_name" {
  description = "The name of the created Compute Instance"
  value       = google_compute_instance.my_instance.name
}
