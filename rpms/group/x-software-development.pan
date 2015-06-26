# Based on SL5.9 group definition

unique template rpms/group/x-software-development;

prefix '/software/packages';

# Mandatory Packages:
'{libICE-devel}' ?= nlist();
'{libX11-devel}' ?= nlist();
'{libXaw-devel}' ?= nlist();
'{libXfixes-devel}' ?= nlist();
'{libXt-devel}' ?= nlist();

# Default Packages:
'{SDL-devel}' ?= nlist();
'{Xaw3d-devel}' ?= nlist();
'{freetype-devel}' ?= nlist();
'{gd-devel}' ?= nlist();
'{giflib-devel}' ?= nlist();
'{libSM-devel}' ?= nlist();
'{libXScrnSaver-devel}' ?= nlist();
'{libXTrap-devel}' ?= nlist();
'{libXau-devel}' ?= nlist();
'{libXcomposite-devel}' ?= nlist();
'{libXcursor-devel}' ?= nlist();
'{libXdamage-devel}' ?= nlist();
'{libXdmcp-devel}' ?= nlist();
'{libXevie-devel}' ?= nlist();
'{libXext-devel}' ?= nlist();
'{libXfont-devel}' ?= nlist();
'{libXfontcache-devel}' ?= nlist();
'{libXft-devel}' ?= nlist();
'{libXmu-devel}' ?= nlist();
'{libXrandr-devel}' ?= nlist();
'{libXrender-devel}' ?= nlist();
'{libXres-devel}' ?= nlist();
'{libXtst-devel}' ?= nlist();
'{libXvMC-devel}' ?= nlist();
'{libXxf86dga-devel}' ?= nlist();
'{libXxf86misc-devel}' ?= nlist();
'{libXxf86vm-devel}' ?= nlist();
'{libdrm-devel}' ?= nlist();
'{libjpeg-devel}' ?= nlist();
'{libmng-devel}' ?= nlist();
'{libpng-devel}' ?= nlist();
'{libtiff-devel}' ?= nlist();
'{mesa-libGL-devel}' ?= nlist();
'{netpbm-devel}' ?= nlist();
'{xorg-x11-xtrans-devel}' ?= nlist();
'{xrestop}' ?= nlist();

# Optional Packages:
'{icon-naming-utils}' ?= nlist();
'{icon-slicer}' ?= nlist();
'{libXp-devel}' ?= nlist();
'{mesa-libGLU-devel}' ?= nlist();
'{mesa-libGLw-devel}' ?= nlist();
'{openmotif-devel}' ?= nlist();
'{xorg-x11-server-sdk}' ?= nlist();
'{xorg-x11-xbitmaps}' ?= nlist();
