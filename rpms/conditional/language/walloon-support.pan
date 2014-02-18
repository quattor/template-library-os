#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Walloon Support
#
#
# conditional packages
#

unique template rpms/conditional/language/walloon-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-wa')])) {
    SELF[escape('hunspell-wa')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Walloon')])) {
    SELF[escape('kde-l10n-Walloon')] = nlist();
} else {
    SELF;
};

