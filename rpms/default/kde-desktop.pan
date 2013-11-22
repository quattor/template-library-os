#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE Desktop
# A KDE desktop.
#
# default packages
#

unique template rpms/default/kde-desktop;

prefix '/software/packages';

'{NetworkManager-gnome}' ?= nlist();
'{SL_desktop_tweaks}' ?= nlist();
'{k3b}' ?= nlist();
'{kcoloredit}' ?= nlist();
'{kdeadmin}' ?= nlist();
'{kdegames}' ?= nlist();
'{kdegraphics}' ?= nlist();
'{kdemultimedia}' ?= nlist();
'{kdenetwork}' ?= nlist();
'{kdepim}' ?= nlist();
'{kdepim-runtime}' ?= nlist();
'{kdeplasma-addons}' ?= nlist();
'{kdeutils}' ?= nlist();
'{kdm}' ?= nlist();
'{kiconedit}' ?= nlist();
'{kipi-plugins}' ?= nlist();
'{kmid}' ?= nlist();
'{konq-plugins}' ?= nlist();
'{ksig}' ?= nlist();
'{ksshaskpass}' ?= nlist();
'{pinentry-qt}' ?= nlist();
