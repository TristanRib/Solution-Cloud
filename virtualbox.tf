terraform {
  required_providers {
    virtualbox = {
      source = "terra-farm/virtualbox"
    }
  }
}

provider "virtualbox" {}

resource "virtualbox_vm" "vm" {
  count  = 2
  name   = "vm-${count.index + 1}"
  cpus   = 1
  memory = "1024 mib"
  image  = "C:/Users/trist/VMs/Templates/ubuntu-22.04.box"

  network_adapter {
    type           = "bridged"
    host_interface = "Wi-Fi"
  }

  autostart = true
}
