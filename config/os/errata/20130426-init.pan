unique template config/os/errata/20130426-init;

variable OS_KERNEL_VERSION_ERRATA ?= nlist(
    'sl640','2.6.32-358.6.1.el6',          
);

# Because JAVA is updated, define a new DEFAULT version to be configured
#variable JAVA_JDK_DEFAULT_VERSION ?= '1.6.0_31';
variable JAVA_JDK_DEFAULT_VERSION ?= '1.6.0.0-1.48.1.11.3.el6_2';
