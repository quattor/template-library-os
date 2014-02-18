#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Base
# This group includes a minimal set of packages. Useful for creating small
# router/firewall boxes, for example.
#
# mandatory packages
#

unique template rpms/base;

prefix '/software/packages';

'{acl}' ?= nlist();
'{at}' ?= nlist();
'{attr}' ?= nlist();
'{authconfig}' ?= nlist();
'{bc}' ?= nlist();
'{bind-utils}' ?= nlist();
'{bzip2}' ?= nlist();
'{crontabs}' ?= nlist();
'{cyrus-sasl-plain}' ?= nlist();
'{libutempter}' ?= nlist();
'{logrotate}' ?= nlist();
'{lsof}' ?= nlist();
'{mailcap}' ?= nlist();
'{man}' ?= nlist();
'{ntsysv}' ?= nlist();
'{parted}' ?= nlist();
'{pciutils}' ?= nlist();
'{psacct}' ?= nlist();
'{quota}' ?= nlist();
'{system-config-securitylevel-tui}' ?= nlist();
'{tmpwatch}' ?= nlist();
'{traceroute}' ?= nlist();
'{vixie-cron}' ?= nlist();
