terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">=5.0"
    }
  }
  backend "gcs" {
    bucket  = "tf-state-sadey2k"
    prefix  = "dev/tf-state"
  }
}

provider "google" {
  // The credentials line is commented out because you will use a service connection in Azure DevOps.
  // credentials = file("E:/Study/DevOps/Azure_DevOps_Courses/TERRAFORM/LABS/GCP/key.json")
  project     = "lab01-gcp-sadey2k"
  region      = "europe-west2"  // Default region for resources
}
