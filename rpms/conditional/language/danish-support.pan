#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Danish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/danish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-da')])) {
    SELF[escape('aspell-da')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Danish')])) {
    SELF[escape('kde-i18n-Danish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-da')])) {
    SELF[escape('man-pages-da')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-da_DK')])) {
    SELF[escape('openoffice.org-langpack-da_DK')] = nlist();
} else {
    SELF;
};

