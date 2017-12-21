# gentoo-packer
run `packer build packer.json` to build a vagrant box file

ansible/disks.yml - sets up disks
ansible/gentoo.yml - extracts/sets up stage3 (tmp folder needs to be on that filesystem, sourced from gentoo.cfg)
ansible/gentoo-stage3.yml - stuff we are testing in the chroot


commands to run thru in playbook in chroot:


TODO:
#Install guest additions?
- doing this via gentoo native package now
- modify packer-init.json to not copy the vbox additions iso, remove tasks from ansible
  - an alternative might be to see if we can pass the headers dir to VBoxLinuxAdditions.run
- what can be cleaned up from the image? (portage tree?)

update documentation
