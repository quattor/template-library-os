#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Scientific support
# Tools for mathematical and scientific computations, and parallel
# computing.
#
# optional packages
#

unique template rpms/optional/scientific;

prefix '/software/packages';

'{atlas}' ?= nlist();
'{compat-openmpi}' ?= nlist();
'{compat-openmpi-psm}' ?= nlist();
'{fftw}' ?= nlist();
'{fftw-devel}' ?= nlist();
'{fftw-static}' ?= nlist();
'{gsl}' ?= nlist();
'{gsl-devel}' ?= nlist();
'{gsl-static}' ?= nlist();
'{lapack}' ?= nlist();
'{mpich2}' ?= nlist();
'{mpitests-mvapich}' ?= nlist();
'{mpitests-mvapich2}' ?= nlist();
'{mpitests-openmpi}' ?= nlist();
'{mvapich}' ?= nlist();
'{mvapich-psm-devel}' ?= nlist();
'{mvapich-psm-static}' ?= nlist();
'{mvapich2}' ?= nlist();
'{mvapich2-psm-devel}' ?= nlist();
'{numpy}' ?= nlist();
'{openmpi}' ?= nlist();
'{openmpi-devel}' ?= nlist();
'{scipy}' ?= nlist();
