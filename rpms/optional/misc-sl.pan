#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Misc Scientific Linux Packages
# These are packages added to Scientific Linux and NOT installed in any
# group, they are here so that they can easily be selected
#
# optional packages
#

unique template rpms/optional/misc-sl;

prefix '/software/packages';

'{915resolution}' ?= nlist();
'{SL_enable_serialconsole}' ?= nlist();
'{SL_no_colorls}' ?= nlist();
'{SL_password_for_singleuser}' ?= nlist();
'{SL_sendmail_accept}' ?= nlist();
'{alpine}' ?= nlist();
'{aufs}' ?= nlist();
'{cfitsio}' ?= nlist();
'{dkms}' ?= nlist();
'{dropit}' ?= nlist();
'{fftw3}' ?= nlist();
'{gv}' ?= nlist();
'{kdeedu}' ?= nlist();
'{lua}' ?= nlist();
'{numpy}' ?= nlist();
'{r1000}' ?= nlist();
'{scipy}' ?= nlist();
'{scipy}' ?= nlist();
'{suitesparse}' ?= nlist();
'{tidy}' ?= nlist();
