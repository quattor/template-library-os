#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Frisian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/frisian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-fy')])) {
    SELF[escape('hunspell-fy')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Frisian')])) {
    SELF[escape('kde-l10n-Frisian')] = nlist();
} else {
    SELF;
};

