#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# X Window System
# Install this group of packages to use the base graphical (X) user
# interface.
#
# default packages
#

unique template rpms/default/base-x;

prefix '/software/packages';

'{authconfig-gtk}' ?= nlist();
'{bitstream-vera-fonts}' ?= nlist();
'{dejavu-lgc-fonts}' ?= nlist();
'{firstboot}' ?= nlist();
'{freeglut}' ?= nlist();
'{gdm}' ?= nlist();
'{glx-utils}' ?= nlist();
'{krb5-auth-dialog}' ?= nlist();
'{liberation-fonts}' ?= nlist();
'{linuxwacom}' ?= nlist();
'{openssh-askpass}' ?= nlist();
'{pirut}' ?= nlist();
'{policycoreutils-gui}' ?= nlist();
'{rhgb}' ?= nlist();
'{synaptics}' ?= nlist();
'{system-config-date}' ?= nlist();
'{system-config-display}' ?= nlist();
'{system-config-network}' ?= nlist();
'{system-config-printer}' ?= nlist();
'{system-config-services}' ?= nlist();
'{system-config-soundcard}' ?= nlist();
'{system-config-users}' ?= nlist();
'{vnc-server}' ?= nlist();
'{wdaemon}' ?= nlist();
'{xorg-x11-apps}' ?= nlist();
'{xorg-x11-twm}' ?= nlist();
'{xterm}' ?= nlist();
