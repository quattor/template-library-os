#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Arabic Support
#
#
# conditional packages
#

unique template rpms/conditional/language/arabic-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Arabic')])) {
    SELF[escape('kde-i18n-Arabic')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('scim-m17n')]) && ! exists(SELF[escape('m17n-db-arabic')])) {
    SELF[escape('m17n-db-arabic')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-ar')])) {
    SELF[escape('openoffice.org-langpack-ar')] = nlist();
} else {
    SELF;
};

