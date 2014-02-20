unique template config/os/errata/20130524-init;

variable OS_KERNEL_VERSION_ERRATA ?= nlist(
    'sl590', '2.6.18-348.3.1.el5',
);

variable AFS_VERSION ?= '1.4.14-82.sl5';

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
