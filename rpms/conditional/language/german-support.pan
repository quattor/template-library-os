#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# German Support
#
#
# conditional packages
#

unique template rpms/conditional/language/german-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-de-DE')])) {
    SELF[escape('Cluster_Administration-de-DE')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-de-DE')])) {
    SELF[escape('Global_File_System-de-DE')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-de-DE')])) {
    SELF[escape('Virtualization-de-DE')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-de')])) {
    SELF[escape('aspell-de')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-German')])) {
    SELF[escape('kde-i18n-German')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-de')])) {
    SELF[escape('man-pages-de')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-de')])) {
    SELF[escape('openoffice.org-langpack-de')] = nlist();
} else {
    SELF;
};

