# gentoo-packer
run `packer build packer.json` to build a vagrant box file

ansible/disks.yml - sets up disks
ansible/gentoo.yml - extracts/sets up stage3 (tmp folder needs to be on that filesystem, sourced from gentoo.cfg)
ansible/gentoo-stage3.yml - stuff we are testing in the chroot


commands to run thru in playbook in chroot:

#template /etc/timezone (CST6CDT)
#template /etc/locale.gen

emerge --ask --update --deep --newuse @world

#run emerge --config sys-libs/timezone-data
#run locale-gen
#eselect locale set [where en_US.UTF-8 shows up]
#(or optionally template /etc/env.d/02locale instead)

#template fstab
#template /etc/conf.d/hostname (Vagrant should be able to update this?)
#template /etc/hosts (Vagrant will update this as well)
#template /etc/conf.d/net
#root #cd /etc/init.d
#root #ln -s net.lo net.eth0
#root #rc-update add net.eth0 default

#verify name of net.eth0

#set root password (vagrant)

#template kernel config
#build kernel
#(genkernel?)

#install grub

TODO:
#test build again after merging gentoo-sources
need to configure the kernel.. genkernel all is a LOT of data
merge split playbooks
Install guest additions?

update documentation
