#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Oriya Support
#
#
# conditional packages
#

unique template rpms/conditional/language/oriya-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-or-IN')])) {
    SELF[escape('Cluster_Administration-or-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-or-IN')])) {
    SELF[escape('Global_File_System-or-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-or-IN')])) {
    SELF[escape('Virtualization-or-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-or_IN')])) {
    SELF[escape('openoffice.org-langpack-or_IN')] = nlist();
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

