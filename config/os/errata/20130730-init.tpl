unique template config/os/errata/20130730-init;

variable PKG_ARCH_DEFAULT ?= 'i386';
variable PKG_ARCH_KERNEL ?= 'i686';
variable OS_KERNEL_VERSION_ERRATA ?= nlist(
    'sl570', '2.6.18-348.12.1.el5',
);

# Because JAVA is updated, define a new DEFAULT version to be configured
variable JAVA_JDK_DEFAULT_VERSION ?= '1.6.0_41';

variable AFS_VERSION ?= '1.4.15-83.sl5';

# Fix /etc/nsswitch.conf dirperm issue
include { 'components/dirperm/config' };
"/software/components/dirperm/paths" ?= list();
"/software/components/dirperm/paths" = {
    item = nlist(
        "path", "/etc/nsswitch.conf",
        "owner", "root:root",
        "perm", "0644",
        "type", "f" 
    );
    if (index(item, SELF) == -1) {
        append(item);
    };
    SELF;
};
