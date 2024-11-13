#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Standard
# The standard installation of Rocky Linux.
#
# default packages
#

unique template rpms/default/standard;

prefix '/software/packages';

'{bash-completion}' ?= dict();
'{bluez}' ?= dict();
'{bpftool}' ?= dict();
'{bzip2}' ?= dict();
'{chrony}' ?= dict();
'{cockpit}' ?= dict();
'{cryptsetup}' ?= dict();
'{dos2unix}' ?= dict();
'{dosfstools}' ?= dict();
'{ethtool}' ?= dict();
'{gnupg2}' ?= dict();
'{iprutils}' ?= dict();
'{kmod-kvdo}' ?= dict();
'{ledmon}' ?= dict();
'{lvm2}' ?= dict();
'{mailcap}' ?= dict();
'{man-pages}' ?= dict();
'{mdadm}' ?= dict();
'{mlocate}' ?= dict();
'{mtr}' ?= dict();
'{nano}' ?= dict();
'{nvme-cli}' ?= dict();
'{realmd}' ?= dict();
'{rsync}' ?= dict();
'{smartmontools}' ?= dict();
'{sos}' ?= dict();
'{sssd}' ?= dict();
'{strace}' ?= dict();
'{teamd}' ?= dict();
'{time}' ?= dict();
'{unzip}' ?= dict();
'{usbutils}' ?= dict();
'{vdo}' ?= dict();
'{virt-what}' ?= dict();
'{which}' ?= dict();
'{words}' ?= dict();
'{xfsdump}' ?= dict();
'{zip}' ?= dict();
