resource "google_compute_instance_template" "tpl" {
  name         = "template"
  machine_type = "e2-medium"

  disk {
    source_image = "debian-cloud/debian-11"
    auto_delete  = true
    disk_size_gb = 100
    boot         = true
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

  can_ip_forward = true
}