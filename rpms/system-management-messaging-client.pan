#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Messaging Client Support
# AMQP messaging client for systems management.
#
# mandatory packages
#

unique template rpms/system-management-messaging-client;

prefix '/software/packages';

'{qpid-cpp-client}' ?= nlist();
