#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Graphical Internet
# This group includes graphical email, Web, and chat clients.
#
# optional packages
#

unique template rpms/optional/graphical-internet;

prefix '/software/packages';

'{gftp}' ?= nlist();
'{kdewebdev}' ?= nlist();
'{thunderbird}' ?= nlist();
'{xchat}' ?= nlist();
