terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.53.1"
    }
  }
}

provider "google" {
  /* project     = "fit-boulevard-377408" */
  credentials = file("../JSON_Key/fit-boulevard-377408-bc644dafc2f2.json")  
}

terraform {
    backend "gcs" {
    bucket  = "statefile-test-bucket"
    prefix  = "terraformIAM/state"
  }
}
