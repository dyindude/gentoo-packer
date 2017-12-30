# gentoo-packer
This repository is a collection of scripts leveraging Ansible and Packer for building Vagrant box images of Gentoo with Packer.

run `ansible-playbook -i inventory host.yml` to download the gentoo `install.iso` to the working folder.

run `packer build gentoo.json` to build a Vagrant box file in `builds` that can be imported as a box.

ansible/disks.yml - sets up disks
ansible/gentoo.yml - extracts/sets up stage3
ansible/gentoo-stage3.yml - does post-setup inside the chroot

# iterating on the builds
After the first build completes, extract the resulting `virtualbox-gentoo.box`:

```
$ cd builds
$ tar xfvz virtualbox-gentoo.box
```

You can then use the misnamed `packer-stage3.json` as an example for running other playbooks from the resulting vagrant box.

- what can be cleaned up from the image? (portage tree? - testing that on this build)
- refactor ansible tasks (set more defaults, break things out like the handbook, etc?)
