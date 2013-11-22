#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Khmer Support
#
#
# conditional packages
#

unique template rpms/conditional/language/khmer-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-km')])) {
    SELF[escape('hunspell-km')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Khmer')])) {
    SELF[escape('kde-l10n-Khmer')] = nlist();
} else {
    SELF;
};

