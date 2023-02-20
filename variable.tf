variable "project-id" {
  description = "This will have the project-id"
  default     = "fit-boulevard-377408"
}

variable "region" {
  description = "This will have the region"
  default     = "us-central1"
}

variable "image" {
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "disk-size" {
  default = 10
}

variable "serviceaccount" {
  type    = list(any)
  default = ["946215667278-compute@developer.gserviceaccount.com"]
}

variable "location" {
  default = "US-CENTRAL1"
}

variable "name" {
  default = "statfile-test-bucket"
}