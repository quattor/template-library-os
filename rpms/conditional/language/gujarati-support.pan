#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Gujarati Support
#
#
# conditional packages
#

unique template rpms/conditional/language/gujarati-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-gu-IN')])) {
    SELF[escape('Cluster_Administration-gu-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-gu-IN')])) {
    SELF[escape('Global_File_System-gu-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-gu-IN')])) {
    SELF[escape('Virtualization-gu-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-gu_IN')])) {
    SELF[escape('openoffice.org-langpack-gu_IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-bridge-gtk')])) {
    SELF[escape('scim-bridge-gtk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-m17n')])) {
    SELF[escape('scim-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('qt')]) && ! exists(SELF[escape('scim-qtimm')])) {
    SELF[escape('scim-qtimm')] = nlist();
} else {
    SELF;
};

