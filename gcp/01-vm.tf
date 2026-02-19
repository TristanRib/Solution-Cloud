resource "google_compute_instance" "micro_vm" {
  name         = "riboulet-tristan"
  machine_type = "e2-micro"
  zone         = "europe-west1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }
}