#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Greek Support
#
#
# conditional packages
#

unique template rpms/conditional/language/greek-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-el')])) {
    SELF[escape('aspell-el')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Greek')])) {
    SELF[escape('kde-i18n-Greek')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('scim-m17n')]) && ! exists(SELF[escape('m17n-db-greek')])) {
    SELF[escape('m17n-db-greek')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-el_GR')])) {
    SELF[escape('openoffice.org-langpack-el_GR')] = nlist();
} else {
    SELF;
};

