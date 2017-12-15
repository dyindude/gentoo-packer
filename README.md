# gentoo-packer
run `packer build packer.json` to build a vagrant box file

ansible/disks.yml - sets up disks
ansible/gentoo.yml - extracts/sets up stage3 (tmp folder needs to be on that filesystem, sourced from gentoo.cfg)


emerge-webrsync doesn't seem to work? troubleshoot this before just using emerge sync
#it doesn't work with the mirror we are using..will investigate this next time

commands to run thru in playbook in chroot:

emerge-webrsync
#use default profile for now
global USE flags

template /etc/timezone (CST6CDT)
template /etc/locale.gen

emerge --ask --update --deep --newuse @world

run emerge --config sys-libs/timezone-data
run locale-gen
eselect locale set [where en_US.UTF-8 shows up]
(or optionally template /etc/env.d/02locale instead)

env-update && source /etc/profile && export PS1="(chroot) $PS1" (or equivalent in playbook)

eselect profile set 
https://coderwall.com/p/_lpf1g/run-a-playbook-ch-ed-in-a-local-dir #example of ch- from playbook
could prolly add the chroot as another inventory, then use localhost for first, chroot for second
