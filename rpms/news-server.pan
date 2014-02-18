#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# News Server
# This group allows you to configure the system as a news server.
#
# mandatory packages
#

unique template rpms/news-server;

prefix '/software/packages';

'{inn}' ?= nlist();
