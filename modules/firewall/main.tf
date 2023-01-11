resource "google_compute_firewall" "firewall" {
  name = "allowhttphttpsssh"
  network = var.networkID
  source_ranges = ["0.0.0.0/0"]
  project = var.project_id

  allow {
    protocol = "tcp"
    ports = ["80"]
  }

  allow {
    protocol = "tcp"
    ports = ["443"]
  }

  allow {
    protocol = "tcp"
    ports = ["22"]
  }

}