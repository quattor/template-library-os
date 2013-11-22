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

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-is')])) {
    SELF[escape('hunspell-is')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-is')])) {
    SELF[escape('hyphen-is')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Icelandic')])) {
    SELF[escape('kde-i18n-Icelandic')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Icelandic')])) {
    SELF[escape('kde-l10n-Icelandic')] = nlist();
} else {
    SELF;
};

