#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# British Support
#
#
# conditional packages
#

unique template rpms/conditional/language/british-support;

prefix '/software';

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-British')])) {
    SELF[escape('kde-i18n-British')] = nlist();
} else {
    SELF;
};

