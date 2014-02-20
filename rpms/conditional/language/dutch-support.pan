#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dutch Support
#
#
# conditional packages
#

unique template rpms/conditional/language/dutch-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-nl')])) {
    SELF[escape('aspell-nl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Dutch')])) {
    SELF[escape('kde-i18n-Dutch')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-nl')])) {
    SELF[escape('openoffice.org-langpack-nl')] = nlist();
} else {
    SELF;
};

