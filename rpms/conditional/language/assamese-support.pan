#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Assamese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/assamese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-as-IN')])) {
    SELF[escape('Cluster_Administration-as-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-as-IN')])) {
    SELF[escape('Global_File_System-as-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-as-IN')])) {
    SELF[escape('Virtualization-as-IN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-as_IN')])) {
    SELF[escape('openoffice.org-langpack-as_IN')] = nlist();
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

