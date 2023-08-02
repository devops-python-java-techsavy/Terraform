resource "google_compute_global_address" "my_lb" {
  name = var.load_balancer_name
}

resource "google_compute_forwarding_rule" "my_lb_forwarding_rule" {
  name       = "my-lb-forwarding-rule"
  target     = google_compute_instance.my_instance.self_link
  ip_address = google_compute_global_address.my_lb.address
}
