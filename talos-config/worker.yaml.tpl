machine:
  install:
    disk: ${installation_disk}
    image: ${installation_image}
  systemDiskEncryption:
    ephemeral:
      provider: luks2
      keys:
        - slot: 0
          tpm: {}
    state:
      provider: luks2
      keys:
        - slot: 0
          tpm: {}
  kubelet:
    extraMounts:
      - destination: /var/lib/longhorn
        type: bind
        source: /var/lib/longhorn
        options:
          - bind
          - rshared
          - rw
  disks:
      - device: ${additional_disk_1}
        partitions:
          - mountpoint: /var/mnt/storage # Where to mount the partition.
    sysctls:
    vm.nr_hugepages: "1024"
  kernel:
    modules:
      - name: nvme_tcp
      - name: vfio_pci
#     - name: uio_pci_generic
