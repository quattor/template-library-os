#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Base
# The basic installation of Scientific Linux.
#
# optional packages
#

unique template rpms/optional/base;

prefix '/software/packages';

'{PyPAM}' ?= nlist();
'{abrt-addon-ccpp}' ?= nlist();
'{abrt-addon-kerneloops}' ?= nlist();
'{abrt-addon-python}' ?= nlist();
'{abrt-cli}' ?= nlist();
'{audispd-plugins}' ?= nlist();
'{brltty}' ?= nlist();
'{cpupowerutils}' ?= nlist();
'{device-mapper-persistent-data}' ?= nlist();
'{dos2unix}' ?= nlist();
'{dumpet}' ?= nlist();
'{ecryptfs-utils}' ?= nlist();
'{edac-utils}' ?= nlist();
'{genisoimage}' ?= nlist();
'{gpm}' ?= nlist();
'{kabi-yum-plugins}' ?= nlist();
'{kernel-doc}' ?= nlist();
'{linuxptp}' ?= nlist();
'{logwatch}' ?= nlist();
'{mkbootdisk}' ?= nlist();
'{mtools}' ?= nlist();
'{ncurses-term}' ?= nlist();
'{nss_db}' ?= nlist();
'{oddjob}' ?= nlist();
'{pax}' ?= nlist();
'{python-dmidecode}' ?= nlist();
'{python-volume_key}' ?= nlist();
'{rsyslog-gnutls}' ?= nlist();
'{rsyslog-gssapi}' ?= nlist();
'{rsyslog-relp}' ?= nlist();
'{sgpio}' ?= nlist();
'{sox}' ?= nlist();
'{squashfs-tools}' ?= nlist();
'{star}' ?= nlist();
'{tboot}' ?= nlist();
'{tunctl}' ?= nlist();
'{udftools}' ?= nlist();
'{unix2dos}' ?= nlist();
'{uuidd}' ?= nlist();
'{volume_key}' ?= nlist();
'{wodim}' ?= nlist();
'{x86info}' ?= nlist();
'{yum-plugin-aliases}' ?= nlist();
'{yum-plugin-changelog}' ?= nlist();
'{yum-plugin-downloadonly}' ?= nlist();
'{yum-plugin-tmprepo}' ?= nlist();
'{yum-plugin-verify}' ?= nlist();
'{yum-plugin-versionlock}' ?= nlist();
'{yum-presto}' ?= nlist();
'{zsh}' ?= nlist();
