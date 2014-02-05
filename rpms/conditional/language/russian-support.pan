#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Russian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/russian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-ru-RU')])) {
    SELF[escape('Cluster_Administration-ru-RU')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-ru-RU')])) {
    SELF[escape('Global_File_System-ru-RU')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-ru-RU')])) {
    SELF[escape('Virtualization-ru-RU')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-ru')])) {
    SELF[escape('aspell-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Russian')])) {
    SELF[escape('kde-i18n-Russian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('scim-m17n')]) && ! exists(SELF[escape('m17n-db-russian')])) {
    SELF[escape('m17n-db-russian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-ru')])) {
    SELF[escape('man-pages-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-ru')])) {
    SELF[escape('openoffice.org-langpack-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('xorg-x11-fonts-cyrillic')])) {
    SELF[escape('xorg-x11-fonts-cyrillic')] = nlist();
} else {
    SELF;
};

