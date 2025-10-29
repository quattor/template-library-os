#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Security Tools
# Security tools for integrity and trust verification.
#
# optional packages
#

unique template rpms/optional/security-tools;

prefix '/software/packages';

'{hmaccalc}' ?= dict();
'{tpm-quote-tools}' ?= dict();
'{tpm-tools}' ?= dict();
'{tpm2-tools}' ?= dict();
'{trousers}' ?= dict();
