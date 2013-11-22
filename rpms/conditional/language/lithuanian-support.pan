#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Lithuanian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/lithuanian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Lithuanian')])) {
    SELF[escape('kde-i18n-Lithuanian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-lt_LT')])) {
    SELF[escape('openoffice.org-langpack-lt_LT')] = nlist();
} else {
    SELF;
};

