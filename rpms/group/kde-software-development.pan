# Based on SL5.9 group definition

unique template rpms/group/kde-software-development;

prefix '/software/packages';

# Mandatory Packages:
'{arts-devel}' ?= nlist();
'{kdelibs-devel}' ?= nlist();
'{qt-devel}' ?= nlist();

# Default Packages:
'{PyQt-devel}' ?= nlist();
'{kdbg}' ?= nlist();
'{kdebase-devel}' ?= nlist();
'{kdenetwork-devel}' ?= nlist();
'{kdesdk}' ?= nlist();
'{kdeutils-devel}' ?= nlist();
'{kdevelop}' ?= nlist();
'{qt-designer}' ?= nlist();

# Optional Packages:
'{kdesdk-devel}' ?= nlist();
