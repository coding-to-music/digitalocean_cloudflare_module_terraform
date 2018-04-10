# Upload ssh key
resource "digitalocean_ssh_key" "default" {
  name               = "T400p SSD"
  public_key         = "${file("ssh-keys/mehul.pub")}"
}

# Create a web server
resource "digitalocean_droplet" "instance" {
  image              = ""
  name               = "${var.instance_name}.${var.domain}"
  region             = "${var.instance_region}"
  size               = "${var.instance_size}"
  backups            = false
  monitoring         = false
  ipv6               = true
  private_networking = true
  ssh_keys           = ["${digitalocean_ssh_key.default.id}"]
  resize_disk        = true
}

# Set DNS record to point to the web server
resource "cloudflare_record" "instance" {
  domain             = "${var.domain}"
  name               = "${var.name}"
  value              = "${digitalocean_droplet.web.ipv4_address}"
  type               = "A"
  ttl                = 3600
  proxied            = false
}
