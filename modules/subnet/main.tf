resource "google_compute_subnetwork" "test-subnet" {
  name          = var.subnet-name
  ip_cidr_range = var.cidr-range
  region        = var.region
  network       = var.network-id
  project       = var.project-id
}