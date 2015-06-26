# Based on SL5.9 group definition

unique template rpms/group/gnome-software-development;

prefix '/software/packages';

# Mandatory Packages:
'{GConf2-devel}' ?= nlist();
'{ORBit2-devel}' ?= nlist();
'{atk-devel}' ?= nlist();
'{glib2-devel}' ?= nlist();
'{gnome-vfs2-devel}' ?= nlist();
'{gtk2-devel}' ?= nlist();
'{libbonobo-devel}' ?= nlist();
'{libbonoboui-devel}' ?= nlist();
'{libglade2-devel}' ?= nlist();
'{libgnome-devel}' ?= nlist();
'{libgnomecanvas-devel}' ?= nlist();
'{libgnomeui-devel}' ?= nlist();
'{pango-devel}' ?= nlist();

# Default Packages:
'{at-spi-devel}' ?= nlist();
'{bug-buddy}' ?= nlist();
'{devhelp}' ?= nlist();
'{eel2-devel}' ?= nlist();
'{evolution-data-server-devel}' ?= nlist();
'{gail-devel}' ?= nlist();
'{glade2}' ?= nlist();
'{gnome-desktop-devel}' ?= nlist();
'{gnome-panel-devel}' ?= nlist();
'{gtk-doc}' ?= nlist();
'{hal-devel}' ?= nlist();
'{libart_lgpl-devel}' ?= nlist();
'{libgnomeprintui22-devel}' ?= nlist();
'{libgtop2-devel}' ?= nlist();
'{pygtk2-devel}' ?= nlist();

# Optional Packages:
'{gob2}' ?= nlist();
'{libgconf-java}' ?= nlist();
'{libglade-java}' ?= nlist();
'{libgnome-java}' ?= nlist();
'{libgtk-java}' ?= nlist();
