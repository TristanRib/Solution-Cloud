terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.0"
    }
  }
}

provider "google" {
  project     = "playground-s-11-ac1f93ca"
  region      = "europe-west1"
  zone        = "europe-west1-b"
  credentials = file("credentials/gcp_credentials.json")
}
