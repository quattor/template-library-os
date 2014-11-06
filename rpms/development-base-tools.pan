# Template to define a package group smaller than the standard development group

unique template rpms/development-base-tools;

include { 'rpms/group/development' };

prefix '/software/packages';

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

# XML
'{expat-devel}' ?= nlist();

