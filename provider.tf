terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.47.0"
    }
  }
}

terraform {
    backend "gcs" {
    bucket  = "statefile-test-bucket"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project     = var.project-id
  region      = var.region
  credentials = file("../JSON_Key/fit-boulevard-377408-dfe7e9baad4a.json")
}

module "vpc" {
  source     = "./modules/vpc"
  vpc_name   = "test-network"
  project_id = "fit-boulevard-377408"
}

module "subnet" {
  source      = "./modules/subnet"
  subnet-name = "test-subnetwork"
  cidr-range  = "10.2.0.0/16"
  region      = var.region
  network-id  = module.vpc.vpc-id
  project-id  = var.project-id
}

module "compute-instance" {
  source        = "./modules/compute-instance"
  network-id    = module.vpc.vpc-id
  project-id    = var.project-id
  image         = var.image
  subnetwork-id = module.subnet.subnet-id
  disk-size     = var.disk-size
}

module "firewall" {
  source         = "./modules/firewall"
  networkID      = module.vpc.vpc-id
  serviceaccount = var.serviceaccount
  project_id     = var.project-id
}

module "instance-template" {
  source = "./modules/instance-template"
}