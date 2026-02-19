terraform {
  required_providers {
    vmware = {
      source = "elsudano/vmware"
    }
  }
}

provider "vmware" {}

resource "vmware_vm" "vm1" {
  name      = "vm-1"
  vcpu      = 1
  memory    = 1024
  disk_size = 20
}

resource "vmware_vm" "vm2" {
  name      = "vm-2"
  vcpu      = 1
  memory    = 1024
  disk_size = 20
}
