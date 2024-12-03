#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Headless Management
# Tools for managing the system without an attached graphical console.
#
# mandatory packages
#

unique template rpms/headless-management;

prefix '/software/packages';

'{cockpit-bridge}' ?= dict();
'{cockpit-system}' ?= dict();
'{cockpit-ws}' ?= dict();
'{openssh-server}' ?= dict();
