#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Catalan Support
#
#
# conditional packages
#

unique template rpms/conditional/language/catalan-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-ca')])) {
    SELF[escape('aspell-ca')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Catalan')])) {
    SELF[escape('kde-i18n-Catalan')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-ca_ES')])) {
    SELF[escape('openoffice.org-langpack-ca_ES')] = nlist();
} else {
    SELF;
};

