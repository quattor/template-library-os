#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Irish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/irish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-it-IT')])) {
    SELF[escape('Cluster_Administration-it-IT')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-it-IT')])) {
    SELF[escape('Global_File_System-it-IT')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-it-IT')])) {
    SELF[escape('Virtualization-it-IT')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-ga')])) {
    SELF[escape('aspell-ga')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-ga_IE')])) {
    SELF[escape('openoffice.org-langpack-ga_IE')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-it')])) {
    SELF[escape('openoffice.org-langpack-it')] = nlist();
} else {
    SELF;
};

