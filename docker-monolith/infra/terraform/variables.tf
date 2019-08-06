variable project {
  description = "Project ID"
}
variable region {
  description = "Region"
  default = "us-central1"
}
variable zone {
  description = "Zone"
  default     = "us-central1-a"
}
variable "machine_type" {
  description = "GCP machine type"
  default = "g1-small"
}
variable count {
  description = "Instances count"
  default     = "1"
}
variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Path to the private key used for ssh access"
}
variable disk_image {
  description = "Disk image"
  default     = "docker-img"
}
