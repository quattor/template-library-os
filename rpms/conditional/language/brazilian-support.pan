#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Brazilian Portuguese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/brazilian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-pt-BR')])) {
    SELF[escape('Cluster_Administration-pt-BR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-pt-BR')])) {
    SELF[escape('Global_File_System-pt-BR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-pt-BR')])) {
    SELF[escape('Virtualization-pt-BR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-pt')])) {
    SELF[escape('aspell-pt')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Brazil')])) {
    SELF[escape('kde-i18n-Brazil')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-pt_BR')])) {
    SELF[escape('openoffice.org-langpack-pt_BR')] = nlist();
} else {
    SELF;
};

