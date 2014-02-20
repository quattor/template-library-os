#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# French Support
#
#
# conditional packages
#

unique template rpms/conditional/language/french-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-fr-FR')])) {
    SELF[escape('Cluster_Administration-fr-FR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-fr-FR')])) {
    SELF[escape('Global_File_System-fr-FR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-fr-FR')])) {
    SELF[escape('Virtualization-fr-FR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-fr')])) {
    SELF[escape('aspell-fr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-French')])) {
    SELF[escape('kde-i18n-French')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-fr')])) {
    SELF[escape('man-pages-fr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-fr')])) {
    SELF[escape('openoffice.org-langpack-fr')] = nlist();
} else {
    SELF;
};

