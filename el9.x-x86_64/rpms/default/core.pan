#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Core
# Minimal host installation
#
# default packages
#

unique template rpms/default/core;

prefix '/software/packages';

'{NetworkManager}' ?= dict();
'{NetworkManager-team}' ?= dict();
'{NetworkManager-tui}' ?= dict();
'{authselect}' ?= dict();
'{dnf-plugins-core}' ?= dict();
'{dracut-config-rescue}' ?= dict();
'{initscripts-rename-device}' ?= dict();
'{iwl100-firmware}' ?= dict();
'{iwl1000-firmware}' ?= dict();
'{iwl105-firmware}' ?= dict();
'{iwl135-firmware}' ?= dict();
'{iwl2000-firmware}' ?= dict();
'{iwl2030-firmware}' ?= dict();
'{iwl3160-firmware}' ?= dict();
'{iwl5000-firmware}' ?= dict();
'{iwl5150-firmware}' ?= dict();
'{iwl6000g2a-firmware}' ?= dict();
'{iwl6050-firmware}' ?= dict();
'{iwl7260-firmware}' ?= dict();
'{kernel-tools}' ?= dict();
'{libsysfs}' ?= dict();
'{linux-firmware}' ?= dict();
'{lshw}' ?= dict();
'{lsscsi}' ?= dict();
'{microcode_ctl}' ?= dict();
'{prefixdevname}' ?= dict();
'{sg3_utils}' ?= dict();
'{sg3_utils-libs}' ?= dict();
