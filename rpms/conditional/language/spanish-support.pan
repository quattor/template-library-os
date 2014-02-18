#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Spanish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/spanish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-es-ES')])) {
    SELF[escape('Cluster_Administration-es-ES')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-es-ES')])) {
    SELF[escape('Global_File_System-es-ES')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-es-ES')])) {
    SELF[escape('Virtualization-es-ES')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-es')])) {
    SELF[escape('aspell-es')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Spanish')])) {
    SELF[escape('kde-i18n-Spanish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-es')])) {
    SELF[escape('man-pages-es')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-es')])) {
    SELF[escape('openoffice.org-langpack-es')] = nlist();
} else {
    SELF;
};

