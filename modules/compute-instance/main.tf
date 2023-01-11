resource "google_compute_instance" "test-instance" {
  name         = "test"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = var.image
      size = var.disk-size
    }
  }

  network_interface {
    network = var.network-id
    subnetwork = var.subnetwork-id

    access_config {
      
    }
  }

  /* metadata_startup_script = <<EOF
  #!/bin/bash
  sudo apt-get update 
  sudo apt -y install apache2 
  sudo systemctl start apache2 
  sudo systemctl status apache2
  EOF */
}