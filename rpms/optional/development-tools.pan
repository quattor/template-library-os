#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Development Tools
# These tools include core development tools such as automake, gcc, perl,
# python, and debuggers.
#
# optional packages
#

unique template rpms/optional/development-tools;

prefix '/software/packages';

'{ElectricFence}' ?= nlist();
'{cmake}' ?= nlist();
'{cvs-inetd}' ?= nlist();
'{dejagnu}' ?= nlist();
'{expect}' ?= nlist();
'{gcc-gnat}' ?= nlist();
'{gcc-objc}' ?= nlist();
'{gcc44}' ?= nlist();
'{gcc44-c++}' ?= nlist();
'{gcc44-gfortran}' ?= nlist();
'{imake}' ?= nlist();
'{java-1.6.0-openjdk}' ?= nlist();
'{java-1.6.0-openjdk-devel}' ?= nlist();
'{java-1.7.0-openjdk}' ?= nlist();
'{java-1.7.0-openjdk-devel}' ?= nlist();
'{libgfortran44}' ?= nlist();
'{memtest86+}' ?= nlist();
'{nasm}' ?= nlist();
'{pexpect}' ?= nlist();
'{python-docs}' ?= nlist();
'{unifdef}' ?= nlist();
