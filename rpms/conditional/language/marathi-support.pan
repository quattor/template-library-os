#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Marathi Support
#
#
# conditional packages
#

unique template rpms/conditional/language/marathi-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-mr-IN')])) {
    SELF[escape('Cluster_Administration-mr-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-mr-IN')])) {
    SELF[escape('Global_File_System-mr-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-mr-IN')])) {
    SELF[escape('Virtualization-mr-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-mr_IN')])) {
    SELF[escape('openoffice.org-langpack-mr_IN')] = nlist();
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

