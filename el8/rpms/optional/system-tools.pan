#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# System Tools
# This group is a collection of various tools for the system, such as the
# client for connecting to SMB shares and tools to monitor network
# traffic.
#
# optional packages
#

unique template rpms/optional/system-tools;

prefix '/software/packages';

'{arpwatch}' ?= dict();
'{autofs}' ?= dict();
'{chrpath}' ?= dict();
'{environment-modules}' ?= dict();
'{fuse}' ?= dict();
'{hardlink}' ?= dict();
'{iotop}' ?= dict();
'{lzop}' ?= dict();
