#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# English (UK) Support
#
#
# conditional packages
#

unique template rpms/conditional/language/british-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-British')])) {
    SELF[escape('kde-i18n-British')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-British')])) {
    SELF[escape('kde-l10n-British')] = nlist();
} else {
    SELF;
};

