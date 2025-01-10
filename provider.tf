    provider "google" {
  project = "sapient-tangent-443812-e1"
  region  = "europe-west9-c"
}

resource "google_compute_instance" "locust_vm" {
  name         = "locust-load-generator"
  machine_type = "e2-medium"
  zone         = "europe-west9-c"

  boot_disk {
    initialize_params {
      image = "ubuntu-2004-focal-v20241219"
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }
}
