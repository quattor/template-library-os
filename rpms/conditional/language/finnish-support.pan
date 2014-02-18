#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Finnish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/finnish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Finnish')])) {
    SELF[escape('kde-i18n-Finnish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-fi_FI')])) {
    SELF[escape('openoffice.org-langpack-fi_FI')] = nlist();
} else {
    SELF;
};

