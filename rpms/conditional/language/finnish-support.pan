#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Finnish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/finnish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-fi')])) {
    SELF[escape('autocorr-fi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-fi')])) {
    SELF[escape('eclipse-nls-fi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Finnish')])) {
    SELF[escape('kde-i18n-Finnish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Finnish')])) {
    SELF[escape('kde-l10n-Finnish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-fi')])) {
    SELF[escape('libreoffice-langpack-fi')] = nlist();
} else {
    SELF;
};

