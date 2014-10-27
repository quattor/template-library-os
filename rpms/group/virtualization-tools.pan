unique template rpms/group/virtualization-tools;

prefix '/software/packages';

'{libguestfs}' ?= nlist();
'{libguestfs-java}' ?= nlist();
'{libguestfs-tools}' ?= nlist();
'{virt-v2v}' ?= nlist();
