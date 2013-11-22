#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# E-mail server
# Allows the system to act as a SMTP and/or IMAP e-mail server.
#
# optional packages
#

unique template rpms/optional/mail-server;

prefix '/software/packages';

'{cyrus-imapd}' ?= nlist();
'{dovecot-mysql}' ?= nlist();
'{dovecot-pgsql}' ?= nlist();
'{dovecot-pigeonhole}' ?= nlist();
'{mailman}' ?= nlist();
'{sendmail}' ?= nlist();
'{sendmail-cf}' ?= nlist();
