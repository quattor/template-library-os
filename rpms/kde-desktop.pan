#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# KDE Desktop
# A KDE desktop.
#
# mandatory packages
#

unique template rpms/kde-desktop;

prefix '/software/packages';

'{alsa-plugins-pulseaudio}' ?= nlist();
'{kde-settings-pulseaudio}' ?= nlist();
'{kdeaccessibility}' ?= nlist();
'{kdeartwork-screensavers}' ?= nlist();
'{kdebase}' ?= nlist();
'{kdebase-workspace}' ?= nlist();
'{kdelibs}' ?= nlist();
'{xsettings-kde}' ?= nlist();
