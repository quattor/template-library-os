#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Portuguese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/portuguese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-pt')])) {
    SELF[escape('aspell-pt')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Portuguese')])) {
    SELF[escape('kde-i18n-Portuguese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-pt_PT')])) {
    SELF[escape('openoffice.org-langpack-pt_PT')] = nlist();
} else {
    SELF;
};

