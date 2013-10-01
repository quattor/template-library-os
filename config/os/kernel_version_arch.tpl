# Template to define kernel configuration specific to this OS version

unique template config/os/kernel_version_arch;

variable KERNEL_SMP_PARAMS ?= nlist(
  'limit', 0,
  'smp', 'smp',
);
