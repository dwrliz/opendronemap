# This is the provider used to spin up the gcloud instance
provider "google" {
  credentials = file("./Credentials.json")
  project = var.project_name
  region  = var.region_name
  zone    = var.zone_name
}

# This creates the google instance
resource "google_compute_instance" "vm_instance" {
  name         = "opendronemap"
  machine_type = var.machine_size

  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    network = "default"

    # Associated our public IP address to this instance
    access_config {
    # makes external IP
    }
  }
  metadata = { startup-script = ("${file("scripts/bootstrap.sh")}") }

  #give a firewall rule to open ports
  tags = ["http-server"]

}

  resource "google_compute_firewall" "http-server" {
     name = "default-allow-http-for-odm"
     network = "default"

    allow {
    protocol = "tcp"
    ports    = ["80", "8000"]
  }

   source_ranges = ["0.0.0.0/0"]
   target_tags = ["http-server"]
}