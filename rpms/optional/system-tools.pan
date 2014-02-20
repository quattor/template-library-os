#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# System Tools
# This group is a collection of various tools for the system, such as the
# client for connecting to SMB shares and tools to monitor network
# traffic.
#
# optional packages
#

unique template rpms/optional/system-tools;

prefix '/software/packages';

'{OpenIPMI-gui}' ?= nlist();
'{adjtimex}' ?= nlist();
'{am-utils}' ?= nlist();
'{amanda-client}' ?= nlist();
'{arptables_jf}' ?= nlist();
'{arpwatch}' ?= nlist();
'{audit}' ?= nlist();
'{avahi-tools}' ?= nlist();
'{blktrace}' ?= nlist();
'{createrepo}' ?= nlist();
'{dstat}' ?= nlist();
'{dtach}' ?= nlist();
'{e4fsprogs}' ?= nlist();
'{festival}' ?= nlist();
'{gnome-nettool}' ?= nlist();
'{gnutls-utils}' ?= nlist();
'{hwbrowser}' ?= nlist();
'{iotop}' ?= nlist();
'{iptraf}' ?= nlist();
'{ktune}' ?= nlist();
'{lslk}' ?= nlist();
'{lsscsi}' ?= nlist();
'{mc}' ?= nlist();
'{mrtg}' ?= nlist();
'{mt-st}' ?= nlist();
'{mtx}' ?= nlist();
'{net-snmp-utils}' ?= nlist();
'{nmap-frontend}' ?= nlist();
'{pinentry}' ?= nlist();
'{rdesktop}' ?= nlist();
'{sblim-gather}' ?= nlist();
'{sblim-wbemcli}' ?= nlist();
'{sysstat}' ?= nlist();
'{tn5250}' ?= nlist();
'{tog-pegasus}' ?= nlist();
'{tsclient}' ?= nlist();
'{uucp}' ?= nlist();
'{uuidd}' ?= nlist();
'{vlock}' ?= nlist();
'{watchdog}' ?= nlist();
'{wireshark-gnome}' ?= nlist();
'{x3270}' ?= nlist();
