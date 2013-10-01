unique template config/os/errata/20100406-init;

variable OS_KERNEL_VERSION_ERRATA ?= nlist(
  'sl470', '2.6.9-89.0.23.EL',
);

variable AFS_VERSION ?= '1.4.7-68.2.SL4';
variable IPW3945_VERSION ?= '1.1.0-1.SL4';
variable XFS_KMDL_VERSION ?= '0.4-1.el4_8';
