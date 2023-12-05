resource "google_compute_network" "terraform-vpc" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "public-subnet" {
  name          = "puclic-subnet1"
  ip_cidr_range = var.public_cidr_range
  region        = var.region
  network       = google_compute_network.terraform-vpc.id
}


resource "google_compute_firewall" "allow_tcp" {
  name    = "terraform-firewall"
  network = google_compute_network.terraform-vpc.id

  allow {
    protocol = "tcp"
    ports    = [80, 443]
  }
  source_tags = ["web"]
}


