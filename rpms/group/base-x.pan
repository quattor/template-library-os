# Based on SL5.9 group definition

unique template rpms/group/base-x;

prefix '/software/packages';

# Mandatory Packages:
'{bitmap-fonts}' ?= nlist();
'{desktop-backgrounds-basic}' ?= nlist();
'{xorg-x11-drivers}' ?= nlist();
'{xorg-x11-fonts-100dpi}' ?= nlist();
'{xorg-x11-fonts-75dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-1-100dpi}' ?= nlist();
'{xorg-x11-fonts-ISO8859-1-75dpi}' ?= nlist();
'{xorg-x11-fonts-Type1}' ?= nlist();
'{xorg-x11-fonts-misc}' ?= nlist();
'{xorg-x11-fonts-truetype}' ?= nlist();
'{xorg-x11-server-Xorg}' ?= nlist();
'{xorg-x11-xauth}' ?= nlist();
'{xorg-x11-xfs}' ?= nlist();
'{xorg-x11-xinit}' ?= nlist();

# Default Packages:
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

# Optional Packages:
'{libpciaccess}' ?= nlist();
'{switchdesk}' ?= nlist();
'{xorg-x11-resutils}' ?= nlist();
'{xorg-x11-server-Xnest}' ?= nlist();
'{xorg-x11-server-Xvfb}' ?= nlist();
'{xorg-x11-utils}' ?= nlist();
'{xorg-x11-xdm}' ?= nlist();
'{xorg-x11-xfs-utils}' ?= nlist();
'{xorg-x11-xfwp}' ?= nlist();
'{xorg-x11-xsm}' ?= nlist();
