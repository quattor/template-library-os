#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Turkish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/turkish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-tr')])) {
    SELF[escape('autocorr-tr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-tr')])) {
    SELF[escape('eclipse-nls-tr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Turkish')])) {
    SELF[escape('kde-i18n-Turkish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Turkish')])) {
    SELF[escape('kde-l10n-Turkish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-tr')])) {
    SELF[escape('libreoffice-langpack-tr')] = nlist();
} else {
    SELF;
};

