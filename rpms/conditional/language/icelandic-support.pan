#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Icelandic Support
#
#
# conditional packages
#

unique template rpms/conditional/language/icelandic-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-is')])) {
    SELF[escape('aspell-is')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Icelandic')])) {
    SELF[escape('kde-i18n-Icelandic')] = nlist();
} else {
    SELF;
};

