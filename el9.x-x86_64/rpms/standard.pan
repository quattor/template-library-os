#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Standard
# The standard installation of Rocky Linux.
#
# mandatory packages
#

unique template rpms/standard;

prefix '/software/packages';

'{acl}' ?= dict();
'{at}' ?= dict();
'{attr}' ?= dict();
'{bc}' ?= dict();
'{cpio}' ?= dict();
'{crontabs}' ?= dict();
'{cyrus-sasl-plain}' ?= dict();
'{dbus}' ?= dict();
'{ed}' ?= dict();
'{file}' ?= dict();
'{irqbalance}' ?= dict();
'{kpatch}' ?= dict();
'{kpatch-dnf}' ?= dict();
'{logrotate}' ?= dict();
'{lsof}' ?= dict();
'{mcelog}' ?= dict();
'{microcode_ctl}' ?= dict();
'{net-tools}' ?= dict();
'{pciutils}' ?= dict();
'{psacct}' ?= dict();
'{quota}' ?= dict();
'{rocky-release}' ?= dict();
'{sudo}' ?= dict();
'{symlinks}' ?= dict();
'{systemd-udev}' ?= dict();
'{tar}' ?= dict();
'{tree}' ?= dict();
'{util-linux-user}' ?= dict();
