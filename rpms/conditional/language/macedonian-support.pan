#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Macedonian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/macedonian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-mk')])) {
    SELF[escape('hunspell-mk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Macedonian')])) {
    SELF[escape('kde-l10n-Macedonian')] = nlist();
} else {
    SELF;
};

