#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Kurdish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/kurdish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-ku')])) {
    SELF[escape('eclipse-nls-ku')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ku')])) {
    SELF[escape('hunspell-ku')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Kurdish')])) {
    SELF[escape('kde-l10n-Kurdish')] = nlist();
} else {
    SELF;
};

