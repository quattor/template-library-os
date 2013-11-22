template config/quattor/aii-server;

prefix '/software/packages';

'{syslinux}' ?= nlist();
'{tftp-server}' ?= nlist();

# Include SCDB dependencies (for checkdeps)
include { 'config/quattor/scdb' };
