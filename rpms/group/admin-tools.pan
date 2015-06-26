# Based on SL5.9 group definition

unique template rpms/group/admin-tools;

prefix '/software/packages';

# Default Packages:
'{authconfig-gtk}' ?= nlist();
'{pirut}' ?= nlist();
'{sabayon}' ?= nlist();
'{setroubleshoot}' ?= nlist();
'{system-config-date}' ?= nlist();
'{system-config-kdump}' ?= nlist();
'{system-config-keyboard}' ?= nlist();
'{system-config-language}' ?= nlist();
'{system-config-lvm}' ?= nlist();
'{system-config-netboot}' ?= nlist();
'{system-config-network}' ?= nlist();
'{system-config-rootpassword}' ?= nlist();
'{system-config-soundcard}' ?= nlist();
'{system-config-users}' ?= nlist();

# Optional Packages:
'{system-config-kickstart}' ?= nlist();
'{tunctl}' ?= nlist();
