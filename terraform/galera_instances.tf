resource "digitalocean_droplet" "galera" {
    count  = 3
    image = "centos-7-x64"
    name = "galera-${count.index}"
    region = "lon1"
    size = "1gb"
    private_networking = true
    ssh_keys = [
      "${var.ssh_fingerprint}"
    ]
    connection {
          user = "root"
          type = "ssh"
          key_file = "${var.priv_key}"
          timeout = "2m"
      }
    tags   = [
        "${digitalocean_tag.galera_servers.id}",
    ]
}
