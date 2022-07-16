variable "project_name" {
  type        = string
  description = "The name of the project to instanciate the instance at."
  default     = "opendronemapvm"
}

variable "region_name" {
  type        = string
  description = "The region that this terraform configuration will instanciate at."
  default     = "us-central1"
}

variable "zone_name" {
  type        = string
  description = "The zone that this terraform configuration will instanciate at."
  default     = "us-central1-a"
}

variable "machine_size" {
  type        = string
  description = "The size that this instance will be."
  default     = "c2-standard-8"
}

variable "image_name" {
  type        = string
  description = "The kind of VM this instance will become"
  default     = "ubuntu-os-cloud/ubuntu-2004-focal-v20220712"
  #"ubuntu-os-cloud/ubuntu-1804-bionic-v20190403"
}

variable "script_path" {
  type        = string
  description = "Where is the path to the script locally on the machine?"
  default     = "scripts/bootstrap.sh"
}
