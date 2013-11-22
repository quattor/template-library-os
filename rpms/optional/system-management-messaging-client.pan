#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Messaging Client Support
# AMQP messaging client for systems management.
#
# optional packages
#

unique template rpms/optional/system-management-messaging-client;

prefix '/software/packages';

'{python-saslwrapper}' ?= nlist();
'{qpid-tests}' ?= nlist();
'{ruby-irb}' ?= nlist();
'{ruby-qpid-qmf}' ?= nlist();
