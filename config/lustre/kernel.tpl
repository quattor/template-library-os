# Template to define kernel version for LUSTRE
#
# To be included at the very beginning of a LUSTRE node profile

unique template config/lustre/kernel;

variable KERNEL_VERSION_NUM ?= "2.6.9-55.0.9.EL_lustre.1.6.3";
variable KERNEL_VARIANT ?= "smp";
variable PKG_KERNEL_NAME = 'kernel-lustre';
