#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Tajik Support
#
#
# conditional packages
#

unique template rpms/conditional/language/tajik-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Tajik')])) {
    SELF[escape('kde-l10n-Tajik')] = nlist();
} else {
    SELF;
};

