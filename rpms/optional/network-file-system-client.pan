#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Network File System Client
# Enables the system to attach to network storage.
#
# optional packages
#

unique template rpms/optional/network-file-system-client;

prefix '/software/packages';

'{cachefilesd}' ?= dict();
