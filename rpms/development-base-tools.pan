# Template to define a package group smaller than the standard development group

unique template rpms/development-base-tools;

include { 'rpms/group/development' };

prefix '/software/packages';

# CMake 2.8
'{cmake28-gui}' ?= nlist();

# Compat gcc
'{compat-gcc-34}' ?= nlist();
'{compat-gcc-34-g77}' ?= nlist();

# Git
'{git}' ?= nlist();

# Mercurial
'{mercurial-hgk}'   ?= nlist();

# Doxygen
'{doxygen}' ?= nlist();

# Docbook
'{docbook-utils}' ?= nlist();

# DB
'{mysql-devel}' ?= nlist();

# Graphic
'{libcanberra-gtk2}' ?= nlist();
'{libXi-devel}' ?= nlist();

# Openmpi
'{openmpi}' ?= nlist();

# Perl
'{perl-SVN-Notify}' ?= nlist();

# Python
'{python-devel}' ?= nlist();
'{python-pip}' ?= nlist();

# XML
'{expat-devel}' ?= nlist();

