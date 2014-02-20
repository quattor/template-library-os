#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Networking Tools
# Tools for configuring and analyzing computer networks.
#
# optional packages
#

unique template rpms/optional/network-tools;

prefix '/software/packages';

'{NetworkManager-openswan}' ?= nlist();
'{arptables_jf}' ?= nlist();
'{arpwatch}' ?= nlist();
'{dropwatch}' ?= nlist();
'{ebtables}' ?= nlist();
'{ipset}' ?= nlist();
'{iptraf}' ?= nlist();
'{iptstate}' ?= nlist();
'{lksctp-tools}' ?= nlist();
'{mipv6-daemon}' ?= nlist();
'{mrtg}' ?= nlist();
'{netlabel_tools}' ?= nlist();
'{nmap}' ?= nlist();
'{stunnel}' ?= nlist();
'{wireshark}' ?= nlist();
