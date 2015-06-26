# Based on SL5.9 group definition

unique template rpms/group/legacy-software-development;

prefix '/software/packages';

# Default Packages:
'{compat-gcc-34}' ?= nlist();
'{compat-gcc-34-c++}' ?= nlist();
'{compat-gcc-34-g77}' ?= nlist();
'{compat-glibc}' ?= nlist();
'{compat-libcom_err}' ?= nlist();
'{compat-libgcc-296}' ?= nlist();
'{compat-libstdc++-296}' ?= nlist();
'{compat-libstdc++-33}' ?= nlist();

# Optional Packages:
'{gtk+}' ?= nlist();
