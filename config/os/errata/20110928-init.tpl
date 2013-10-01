unique template config/os/errata/20110928-init;

variable OS_KERNEL_VERSION_ERRATA ?= nlist(
    'sl620', '2.6.32-131.12.1.el6',
);

# Because JAVA is updated, define a new DEFAULT version to be configured
# variable JAVA_JDK_DEFAULT_VERSION ?= '1.6.0_24';
#
