# Based on SL5.9 group definition

unique template rpms/group/gnome-desktop;

prefix '/software/packages';

# Mandatory Packages:
'{control-center}' ?= nlist();
'{gnome-applets}' ?= nlist();
'{gnome-panel}' ?= nlist();
'{gnome-session}' ?= nlist();
'{gnome-terminal}' ?= nlist();
'{metacity}' ?= nlist();
'{nautilus}' ?= nlist();
'{yelp}' ?= nlist();

# Default Packages:
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

# Optional Packages:
'{dasher}' ?= nlist();
'{gconf-editor}' ?= nlist();
'{gnome-bluetooth}' ?= nlist();
'{gnome-keyring-manager}' ?= nlist();
'{hal-gnome}' ?= nlist();
'{pinentry-gtk}' ?= nlist();
