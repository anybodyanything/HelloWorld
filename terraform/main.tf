terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version ="~> 4.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "google" {
  project = "75238950751"
  region = "us-central1"
  credentials = file("C:/Users/catar/Downloads/steel-totality-328221-96c30dc8f46e.json")
}

resource "google_container_cluster" "primary" {
  name = "gke-cluster"
  location = "us-central1"

  initial_node_count = 1

  node_config {
    machine_type = "e2-small"
    disk_size_gb = 20
  }
}

resource "google_container_node_pool" "default_pool" {
  name = "default-pool"
  cluster = google_container_cluster.primary.name
  location = google_container_cluster.primary.location
  node_count = 2

  node_config {
    machine_type = "e2-small"
  }
}