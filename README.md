# gentoo-packer
run `packer build packer.json` to build a vagrant box file

ansible/disks.yml - sets up disks
ansible/gentoo.yml - extracts/sets up stage3 (tmp folder needs to be on that filesystem, sourced from gentoo.cfg)
