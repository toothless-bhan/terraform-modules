terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "3.0.1-rc3"
    }
  }
}

resource "proxmox_vm_qemu" "virtual_machine" {
  name        = var.vm_name
  target_node = var.target_node

  clone = var.template_name
}