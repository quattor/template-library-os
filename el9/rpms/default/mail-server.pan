#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Mail Server
# These packages allow you to configure an IMAP or SMTP mail server.
#
# default packages
#

unique template rpms/default/mail-server;

prefix '/software/packages';

'{cyrus-sasl}' ?= dict();
