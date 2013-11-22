#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Messaging Client Support
# AMQP messaging client for systems management.
#
# default packages
#

unique template rpms/default/system-management-messaging-client;

prefix '/software/packages';

'{python-qpid}' ?= nlist();
'{python-qpid-qmf}' ?= nlist();
'{qpid-qmf}' ?= nlist();
'{qpid-tools}' ?= nlist();
