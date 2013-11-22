#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# System administration tools
# Utilities useful in system administration.
#
# optional packages
#

unique template rpms/optional/system-admin-tools;

prefix '/software/packages';

'{conman}' ?= nlist();
'{crypto-utils}' ?= nlist();
'{dtach}' ?= nlist();
'{expect}' ?= nlist();
'{hardlink}' ?= nlist();
'{lsscsi}' ?= nlist();
'{mc}' ?= nlist();
'{mgetty}' ?= nlist();
'{pexpect}' ?= nlist();
'{rdist}' ?= nlist();
'{rrdtool}' ?= nlist();
'{screen}' ?= nlist();
'{scrub}' ?= nlist();
'{symlinks}' ?= nlist();
'{tree}' ?= nlist();
'{vlock}' ?= nlist();
'{xdelta}' ?= nlist();
