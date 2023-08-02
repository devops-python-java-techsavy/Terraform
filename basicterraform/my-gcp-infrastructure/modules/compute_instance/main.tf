resource "google_compute_instance" "my_instance" {
  name         = "my-instance"
  machine_type = var.instance_type

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
  }
}
