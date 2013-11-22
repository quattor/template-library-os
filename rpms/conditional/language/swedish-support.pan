#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Swedish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/swedish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-sv')])) {
    SELF[escape('aspell-sv')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Swedish')])) {
    SELF[escape('kde-i18n-Swedish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('scim-m17n')]) && ! exists(SELF[escape('m17n-db-swedish')])) {
    SELF[escape('m17n-db-swedish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-sv')])) {
    SELF[escape('openoffice.org-langpack-sv')] = nlist();
} else {
    SELF;
};

