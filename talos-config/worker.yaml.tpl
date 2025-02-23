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
      - destination: /var/mnt/storage
        type: bind
        source: /var/mnt/storage
        options:
          - bind
          - rshared
          - rw
  disks:
      - device: ${additional_disk_1}
        partitions:
          - mountpoint: /var/mnt/storage # Where to mount the partition.
