output "vpc-name" {
  value = google_compute_network.terraform-vpc.name
}

output "vpc-id" {
  value = google_compute_network.terraform-vpc.id
}

output "private-subnet-cidr" {
  value = google_compute_subnetwork.public-subnet.ip_cidr_range
}