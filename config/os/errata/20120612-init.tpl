unique template config/os/errata/20120612-init;

variable PKG_ARCH_DEFAULT ?= 'i386';
variable PKG_ARCH_KERNEL ?= 'i686';
variable OS_KERNEL_VERSION_ERRATA ?= nlist(
    'sl570', '2.6.18-308.8.1.el5',
);

# Because JAVA is updated, define a new DEFAULT version to be configured
variable JAVA_JDK_DEFAULT_VERSION ?= '1.6.0_31';

variable AFS_VERSION ?= '1.4.14-80.sl5';
