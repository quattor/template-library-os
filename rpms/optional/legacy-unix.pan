#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Legacy UNIX compatibility
# Compatibility programs for migration from or working with legacy UNIX
# environments.
#
# optional packages
#

unique template rpms/optional/legacy-unix;

prefix '/software/packages';

'{authd}' ?= nlist();
'{cups-lpd}' ?= nlist();
'{dump}' ?= nlist();
'{finger}' ?= nlist();
'{finger-server}' ?= nlist();
'{krb5-appl-servers}' ?= nlist();
'{ksh}' ?= nlist();
'{mksh}' ?= nlist();
'{ncompress}' ?= nlist();
'{rsh}' ?= nlist();
'{rsh-server}' ?= nlist();
'{rusers}' ?= nlist();
'{rusers-server}' ?= nlist();
'{rwho}' ?= nlist();
'{talk}' ?= nlist();
'{talk-server}' ?= nlist();
'{tcp_wrappers}' ?= nlist();
'{telnet}' ?= nlist();
'{telnet-server}' ?= nlist();
'{tftp}' ?= nlist();
