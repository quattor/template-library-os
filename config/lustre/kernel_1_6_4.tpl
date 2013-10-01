# Template to define kernel version for LUSTRE
#
# To be included at the very beginning of a LUSTRE node profile

unique template config/lustre/kernel_1_6_4;

variable KERNEL_VERSION_NUM ?= "2.6.9-67.0.4.EL_lustre.1.6.4.3";
variable KERNEL_VARIANT ?= "smp";
variable PKG_KERNEL_NAME = 'kernel-lustre';
