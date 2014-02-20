#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Java
# Support for running programs written in the Java programming language.
#
# mandatory packages
#

unique template rpms/java;

prefix '/software/packages';

'{java-1.4.2-gcj-compat}' ?= nlist();
'{libgcj}' ?= nlist();
