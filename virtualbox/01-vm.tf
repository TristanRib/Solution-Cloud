resource "virtualbox_vm" "vm" {
  count  = 2
  name   = "vm-${count.index + 1}"
  cpus   = 1
  memory = "1024 mib"
  image  = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20180903.0.0/providers/virtualbox.box"

  network_adapter {
    type           = "bridged"
    host_interface = "Intel(R) Wi-Fi 6E AX210 160MHz"
  }
}
