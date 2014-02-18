#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Chhattisgarhi Support
#
#
# conditional packages
#

unique template rpms/conditional/language/chhattisgarhi-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Chhattisgarhi')])) {
    SELF[escape('kde-l10n-Chhattisgarhi')] = nlist();
} else {
    SELF;
};

