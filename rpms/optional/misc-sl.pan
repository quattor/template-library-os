#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Misc Scientific Linux Packages
# These are packages added to Scientific Linux and NOT installed in any
# group, they are here so that they can easily be selected
#
# optional packages
#

unique template rpms/optional/misc-sl;

prefix '/software/packages';

'{SL_desktop_tweaks}' ?= nlist();
'{SL_enable_serialconsole}' ?= nlist();
'{SL_enable_serialconsole-1152}' ?= nlist();
'{SL_enable_serialconsole-192}' ?= nlist();
'{SL_enable_serialconsole-384}' ?= nlist();
'{SL_no_colorls}' ?= nlist();
'{SL_password_for_singleuser}' ?= nlist();
'{abattis-cantarell-fonts}' ?= nlist();
