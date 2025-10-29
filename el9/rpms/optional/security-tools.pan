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
'{tpm2-tools}' ?= dict();
'{tss2}' ?= dict();
