# Template to define kernel version for LUSTRE
#
# To be included at the very beginning of a LUSTRE node profile

unique template config/lustre/kernel;

variable KERNEL_VERSION_NUM ?= "2.6.18-92.1.17.el5_lustre.1.8.0";
variable KERNEL_VARIANT ?= "smp";
variable PKG_KERNEL_NAME = 'kernel-lustre';
