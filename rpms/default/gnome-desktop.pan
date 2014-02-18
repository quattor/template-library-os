#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# GNOME Desktop Environment
# GNOME is a powerful, graphical user interface which includes a panel,
# desktop, system icons, and a graphical file manager.
#
# default packages
#

unique template rpms/default/gnome-desktop;

prefix '/software/packages';

'{NetworkManager-gnome}' ?= nlist();
'{SL_desktop_tweaks}' ?= nlist();
'{alacarte}' ?= nlist();
'{at-spi}' ?= nlist();
'{desktop-printing}' ?= nlist();
'{dvd+rw-tools}' ?= nlist();
'{eog}' ?= nlist();
'{esc}' ?= nlist();
'{evince}' ?= nlist();
'{file-roller}' ?= nlist();
'{gedit}' ?= nlist();
'{gnome-audio}' ?= nlist();
'{gnome-backgrounds}' ?= nlist();
'{gnome-mag}' ?= nlist();
'{gnome-netstatus}' ?= nlist();
'{gnome-power-manager}' ?= nlist();
'{gnome-screensaver}' ?= nlist();
'{gnome-system-monitor}' ?= nlist();
'{gnome-themes}' ?= nlist();
'{gnome-user-docs}' ?= nlist();
'{gnome-utils}' ?= nlist();
'{gnome-vfs2-smb}' ?= nlist();
'{gnome-volume-manager}' ?= nlist();
'{gok}' ?= nlist();
'{gtk2-engines}' ?= nlist();
'{gtkhtml3}' ?= nlist();
'{im-chooser}' ?= nlist();
'{nautilus-cd-burner}' ?= nlist();
'{nautilus-open-terminal}' ?= nlist();
'{notification-daemon}' ?= nlist();
'{orca}' ?= nlist();
'{sabayon-apply}' ?= nlist();
'{vino}' ?= nlist();
