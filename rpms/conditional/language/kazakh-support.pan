#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Kazakh Support
#
#
# conditional packages
#

unique template rpms/conditional/language/kazakh-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-kk')])) {
    SELF[escape('hunspell-kk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Kazakh')])) {
    SELF[escape('kde-l10n-Kazakh')] = nlist();
} else {
    SELF;
};

