terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = "0.80.0"
    }
    talos = {
      source = "siderolabs/talos"
      version = "0.9.0-alpha.0"
    }
  }
}

provider "proxmox" {
  endpoint = var.proxmox_api_url
  api_token = "${var.proxmox_api_token_id}=${var.proxmox_api_token_secret}"

  ssh {
    agent = true
    username = "terraform"
  }
}

provider "talos" {
  # Configuration options
}
