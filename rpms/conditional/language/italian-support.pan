#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Italian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/italian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-it')])) {
    SELF[escape('aspell-it')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Italian')])) {
    SELF[escape('kde-i18n-Italian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-it')])) {
    SELF[escape('man-pages-it')] = nlist();
} else {
    SELF;
};

