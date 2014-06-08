# Template to define a package group smaller than the standard development group

unique template rpms/development-base-tools;

prefix '/software/packages';

# CMake 2.8
'{cmake28-gui}' ?= nlist();

# Compat gcc
'{compat-gcc-34}' ?= nlist();

# Git
'{git}' ?= nlist();

# Mercurial
'{mercurial-hgk}'   ?= nlist();

# Doxygen
'{doxygen}' ?= nlist();

# Docbook
'{docbook-utils}' ?= nlist();


