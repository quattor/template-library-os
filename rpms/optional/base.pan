#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Base
# This group includes a minimal set of packages. Useful for creating small
# router/firewall boxes, for example.
#
# optional packages
#

unique template rpms/optional/base;

prefix '/software/packages';

'{aide}' ?= nlist();
'{authd}' ?= nlist();
'{bridge-utils}' ?= nlist();
'{brltty}' ?= nlist();
'{convmv}' ?= nlist();
'{cpufreq-utils}' ?= nlist();
'{device-mapper-multipath}' ?= nlist();
'{dmraid-events-logwatch}' ?= nlist();
'{edac-utils}' ?= nlist();
'{fcoe-utils}' ?= nlist();
'{fipscheck}' ?= nlist();
'{freeipmi}' ?= nlist();
'{fuse}' ?= nlist();
'{fuse-libs}' ?= nlist();
'{gnupg2}' ?= nlist();
'{gpart}' ?= nlist();
'{hardlink}' ?= nlist();
'{hesinfo}' ?= nlist();
'{hfsutils}' ?= nlist();
'{ibmasm}' ?= nlist();
'{iscsi-initiator-utils}' ?= nlist();
'{kexec-tools}' ?= nlist();
'{keyutils}' ?= nlist();
'{libhbaapi}' ?= nlist();
'{libhbalinux}' ?= nlist();
'{nfs4-acl-tools}' ?= nlist();
'{openCryptoki}' ?= nlist();
'{openscap}' ?= nlist();
'{openswan}' ?= nlist();
'{squashfs-tools}' ?= nlist();
'{sssd}' ?= nlist();
'{star}' ?= nlist();
'{tpm-tools}' ?= nlist();
'{trousers}' ?= nlist();
'{x86info}' ?= nlist();
'{yum-security}' ?= nlist();
'{yum-updatesd}' ?= nlist();
