# VM creation - Control Plane
cp_total_count = 1 # Number of requied Control Plane VM/nodes
starting_cp_vm_id = 201
cp_proxmox_nodes = [ "pve" ] # Proxmox nodes where to provision Control Plane. Example ["pve", "pve02", "pve03"]
cp_ram = 2048 # Control Plane VM ram (in MB)
cp_core = 2 # Control Plane VM number of core
cp_vm_datastore = "local-zfs"
cp_disk_size = 15 # Control Plane VM disk size 
cp_mac_address = ["bc:24:11:88:51:e1"] # Control Plane VM mac address (for DHCP reservation)
cp_network_bridge = "vmbr0"

# VM creation - worker
worker_total_count = 1 # Number of requied Worker VM/nodes
starting_worker_vm_id = 204
worker_proxmox_nodes = [ "pve" ] # Same as above for Control Plane
worker_ram = 2048 # Worker VM ram (in MB)
worker_core = 2 # Worker VM number of core
worker_vm_datastore = "local-zfs"
worker_disk_size = 15 # Worker VM disk size 
worker_disk2_size = 50
worker_mac_address = ["bc:24:11:11:93:37"] # Worker VM mac address (for DHCP reservation)
worker_network_bridge = "vmbr0"


# Talos configuration
iso_download_url = "https://factory.talos.dev/image/ce4c980550dd2ab1b17bbf2b08801c7eb59418eafe8f279833297925d67c7515/v1.9.3/metal-amd64-secureboot.iso"
installation_image = "factory.talos.dev/installer-secureboot/ce4c980550dd2ab1b17bbf2b08801c7eb59418eafe8f279833297925d67c7515:v1.9.3"
cluster_name = "talos-proxmox-cluster"
control_planes_ip = ["192.168.100.201"]
worker_ip = ["192.168.100.204"]
vip = "192.168.100.200" # https://www.talos.dev/v1.9/talos-guides/network/vip/
cluster_endpoint = "https://192.168.100.200:6443" # This needes to be the same as the Talos "vip" for redundancy