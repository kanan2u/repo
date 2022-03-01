provider "google" {
    credentials = file("gold-verve-335308-5ec71036ae59.json")

    project = "gold-verve-335308"
    region  = "us-east1"
    zone    = "us-east1-c"
}

resource "google_compute_network" "vpc_network" {
    name                    = "first-demo-network"
    auto_create_subnetworks = "true"
}

terraform {
  backend "gcs" {
    bucket  = "levelup360-terraform"
    prefix  = "terraform-practice"
    credentials = "gold-verve-335308-5ec71036ae59.json"
  }
}