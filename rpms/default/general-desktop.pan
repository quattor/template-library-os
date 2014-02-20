#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# General Purpose Desktop
# A general purpose desktop that adds to Desktop and provides full GNOME
# features.
#
# default packages
#

unique template rpms/default/general-desktop;

prefix '/software/packages';

'{PackageKit-gstreamer-plugin}' ?= nlist();
'{SL_desktop_tweaks}' ?= nlist();
'{authconfig-gtk}' ?= nlist();
'{brasero-nautilus}' ?= nlist();
'{cheese}' ?= nlist();
'{compiz-gnome}' ?= nlist();
'{evince}' ?= nlist();
'{evince-dvi}' ?= nlist();
'{file-roller}' ?= nlist();
'{gcalctool}' ?= nlist();
'{gedit}' ?= nlist();
'{gnome-backgrounds}' ?= nlist();
'{gnome-bluetooth}' ?= nlist();
'{gnome-disk-utility}' ?= nlist();
'{gnome-power-manager}' ?= nlist();
'{gnome-system-monitor}' ?= nlist();
'{gnome-themes}' ?= nlist();
'{gnome-user-docs}' ?= nlist();
'{gnome-user-share}' ?= nlist();
'{gnome-utils}' ?= nlist();
'{gnote}' ?= nlist();
'{gthumb}' ?= nlist();
'{gucharmap}' ?= nlist();
'{gvfs-afc}' ?= nlist();
'{gvfs-gphoto2}' ?= nlist();
'{gvfs-obexftp}' ?= nlist();
'{mousetweaks}' ?= nlist();
'{nautilus-open-terminal}' ?= nlist();
'{nautilus-sendto}' ?= nlist();
'{rhythmbox}' ?= nlist();
'{scenery-backgrounds}' ?= nlist();
'{seahorse}' ?= nlist();
'{sound-juicer}' ?= nlist();
'{system-config-firewall}' ?= nlist();
'{system-config-users}' ?= nlist();
'{totem}' ?= nlist();
'{totem-nautilus}' ?= nlist();
