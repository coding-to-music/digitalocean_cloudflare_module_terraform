variable domain {
  description = "Domain name to set DNS entries."
}

variable instance_name {
  description = "Identifier for the instance"
}

variable instance_region {
  description = "Digital Ocean region for the instance"
}

variable instance_size {
  description = "Instance size defined on Digital Ocean"
}

variable instance_image {
  description = "Image slug as defined on Digital Ocean"
  default     = "freebsd-11-1-x64-zfs"
}
