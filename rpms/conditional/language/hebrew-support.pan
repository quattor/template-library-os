#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hebrew Support
#
#
# conditional packages
#

unique template rpms/conditional/language/hebrew-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Hebrew')])) {
    SELF[escape('kde-i18n-Hebrew')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('scim-m17n')]) && ! exists(SELF[escape('m17n-db-hebrew')])) {
    SELF[escape('m17n-db-hebrew')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-he_IL')])) {
    SELF[escape('openoffice.org-langpack-he_IL')] = nlist();
} else {
    SELF;
};

