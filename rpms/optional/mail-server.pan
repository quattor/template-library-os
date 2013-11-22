#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Mail Server
# These packages allow you to configure an IMAP or SMTP mail server.
#
# optional packages
#

unique template rpms/optional/mail-server;

prefix '/software/packages';

'{cyrus-imapd}' ?= nlist();
'{cyrus-imapd-perl}' ?= nlist();
'{exim}' ?= nlist();
'{exim-doc}' ?= nlist();
'{mailman}' ?= nlist();
'{postfix}' ?= nlist();
'{squirrelmail}' ?= nlist();
