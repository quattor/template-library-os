#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Desktop
# A minimal desktop that can also be used as a thin client.
#
# mandatory packages
#

unique template rpms/basic-desktop;

prefix '/software/packages';

'{NetworkManager}' ?= nlist();
'{NetworkManager-gnome}' ?= nlist();
'{alsa-plugins-pulseaudio}' ?= nlist();
'{at-spi}' ?= nlist();
'{control-center}' ?= nlist();
'{dbus}' ?= nlist();
'{gdm}' ?= nlist();
'{gdm-user-switch-applet}' ?= nlist();
'{gnome-panel}' ?= nlist();
'{gnome-power-manager}' ?= nlist();
'{gnome-screensaver}' ?= nlist();
'{gnome-session}' ?= nlist();
'{gnome-terminal}' ?= nlist();
'{gvfs-archive}' ?= nlist();
'{gvfs-fuse}' ?= nlist();
'{gvfs-smb}' ?= nlist();
'{metacity}' ?= nlist();
'{nautilus}' ?= nlist();
'{notification-daemon}' ?= nlist();
'{polkit-gnome}' ?= nlist();
'{xdg-user-dirs-gtk}' ?= nlist();
'{yelp}' ?= nlist();
