variable domain {
  description = "Domain name to set DNS entries."
}

variable ssh_keyname {
  description = "Identifier for the ssh key"
}

variable ssh_keypath {
  description = "Path for ssh key"
}

variable instance_name {
  description = "Identifier for the instance"
}

variable instance_region {
  description = "Digital Ocean region for the instance"
  default     = "nyc3"
}

variable instance_size {
  description = "Instance size defined on Digital Ocean"
  default      = "1gb"
}

variable instance_image {
  description = "Image slug as defined on Digital Ocean"
  default     = "freebsd-11-1-x64-zfs"
}
