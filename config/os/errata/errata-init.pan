# This template can be used to do kernel version redefinitions or other
# actions that must be executed early in the configuration.

unique template config/os/errata/errata-init;

variable OS_KERNEL_VERSION_ERRATA ?= nlist(
    'sl590', '2.6.18-348.el5',
);
