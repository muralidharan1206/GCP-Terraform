variable "project-id" {
  description = "This will have the project-id"
  default     = "nice-script-373112"
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
  default = ["551110528569-compute@developer.gserviceaccount.com"]
}