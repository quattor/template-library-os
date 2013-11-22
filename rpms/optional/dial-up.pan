#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dial-up Networking Support
# Tools for connecting via PPP or ISDN.
#
# optional packages
#

unique template rpms/optional/dial-up;

prefix '/software/packages';

'{efax}' ?= nlist();
'{isdn4k-utils}' ?= nlist();
'{pptp}' ?= nlist();
'{rp-pppoe}' ?= nlist();
