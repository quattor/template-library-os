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

'{aide}' ?= nlist();
'{amtu}' ?= nlist();
'{hmaccalc}' ?= nlist();
'{openscap}' ?= nlist();
'{openscap-utils}' ?= nlist();
'{p11-kit-trust}' ?= nlist();
'{tpm-tools}' ?= nlist();
'{trousers}' ?= nlist();
