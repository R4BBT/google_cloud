terraform {
  required_version = ">= 0.13"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.50"
    }
  }
}

resource "google_storage_bucket" "tfstate-files" {
  name          = "tfstate-files-123456"
  location      = "US"
  force_destroy = false
  project       = "rfang-sc-lab"
  storage_class  = "STANDARD"
  uniform_bucket_level_access = true
}
