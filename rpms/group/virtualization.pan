unique template rpms/group/virtualization;

prefix '/software/packages';

'{qemu-kvm}' ?= nlist();
'{hypervkvpd}' ?= nlist();
'{qemu-guest-agent}' ?= nlist();
'{qemu-kvm-tools}' ?= nlist();
