unique template config/os/errata/20120223-init;

variable OS_KERNEL_VERSION_ERRATA ?= nlist(
    'sl470', '2.6.9-100.EL',
);

variable AFS_VERSION ?= '1.4.14-80.sl4';
variable IPW3945_VERSION ?= '1.1.0-1.SL4';
