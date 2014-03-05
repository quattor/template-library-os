# Absolute minimum of RPMs to explicitly add to the configuration to be able to properly install
# a machine with AII.

unique template rpms/minimum;

# A few kernel dependencies that must be in the configuration to avoid
# issues with yum-versionlock
'/software/packages/{kernel}' ?= nlist();
'/software/packages/{kernel-doc}' ?= nlist();
'/software/packages/{kernel-firmware}' ?= nlist();
'/software/packages/{kernel-headers}' ?= nlist();

# The following packages were added to work around a dependency
# problem at installation time with SL 6.4.
# To be reviewed at some point.
'/software/packages/{parted}' ?= nlist();
'/software/packages/{dosfstools}' ?= nlist();
'/software/packages/{tmpwatch}' ?= nlist();
'/software/packages/{ed}' ?= nlist();
'/software/packages/{at}' ?= nlist();
'/software/packages/{time}' ?= nlist();

# LVM
'/software/packages/{lvm2}' ?= nlist();

# OpenSSH
'/software/packages/{openssh-server}' ?= nlist();

# dhcp client
'/software/packages/{dhclient}' ?= nlist();

# vim
'/software/packages/{vim}' ?= nlist();

# ntp
'/software/packages/{ntp}' ?= nlist();
