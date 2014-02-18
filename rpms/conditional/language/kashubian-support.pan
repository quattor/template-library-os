#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Kashubian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/kashubian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-csb')])) {
    SELF[escape('hunspell-csb')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Kashubian')])) {
    SELF[escape('kde-l10n-Kashubian')] = nlist();
} else {
    SELF;
};

