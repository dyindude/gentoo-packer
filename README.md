# gentoo-packer
This repository is a collection of scripts leveraging Ansible and Packer for building Vagrant box images of Gentoo with Packer.

run `packer build gentoo.json` to build a Vagrant box file in `builds` that can be imported as a box.

ansible/disks.yml - sets up disks
ansible/gentoo.yml - extracts/sets up stage3
ansible/gentoo-stage3.yml - does post-setup inside the chroot
