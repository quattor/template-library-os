#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Remote Desktop Clients
#
#
# optional packages
#

unique template rpms/optional/remote-desktop-clients;

prefix '/software/packages';

'{freerdp}' ?= nlist();
'{rdesktop}' ?= nlist();
'{spice-client}' ?= nlist();
'{spice-xpi}' ?= nlist();
'{tigervnc}' ?= nlist();
'{tsclient}' ?= nlist();
'{vinagre}' ?= nlist();
