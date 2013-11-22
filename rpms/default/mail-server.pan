#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# E-mail server
# Allows the system to act as a SMTP and/or IMAP e-mail server.
#
# default packages
#

unique template rpms/default/mail-server;

prefix '/software/packages';

'{dovecot}' ?= nlist();
'{postfix}' ?= nlist();
'{spamassassin}' ?= nlist();
