#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Base
# The basic installation of Scientific Linux.
#
# mandatory packages
#

unique template rpms/base;

prefix '/software/packages';

'{alsa-utils}' ?= nlist();
'{at}' ?= nlist();
'{authconfig}' ?= nlist();
'{bc}' ?= nlist();
'{bind-utils}' ?= nlist();
'{crontabs}' ?= nlist();
'{cyrus-sasl-plain}' ?= nlist();
'{dbus}' ?= nlist();
'{ed}' ?= nlist();
'{file}' ?= nlist();
'{logrotate}' ?= nlist();
'{lsof}' ?= nlist();
'{man}' ?= nlist();
'{ntsysv}' ?= nlist();
'{parted}' ?= nlist();
'{pciutils}' ?= nlist();
'{psacct}' ?= nlist();
'{quota}' ?= nlist();
'{setserial}' ?= nlist();
'{sl-indexhtml}' ?= nlist();
'{tmpwatch}' ?= nlist();
'{traceroute}' ?= nlist();
