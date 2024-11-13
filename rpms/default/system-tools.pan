#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# System Tools
# This group is a collection of various tools for the system, such as the
# client for connecting to SMB shares and tools to monitor network
# traffic.
#
# default packages
#

unique template rpms/default/system-tools;

prefix '/software/packages';

'{chrony}' ?= dict();
'{cifs-utils}' ?= dict();
'{openldap-clients}' ?= dict();
'{setserial}' ?= dict();
'{tmux}' ?= dict();
'{zsh}' ?= dict();
