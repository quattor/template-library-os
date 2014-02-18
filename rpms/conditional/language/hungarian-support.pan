#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hungarian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/hungarian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-hu')])) {
    SELF[escape('autocorr-hu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-hu')])) {
    SELF[escape('eclipse-nls-hu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-hu')])) {
    SELF[escape('hunspell-hu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-hu')])) {
    SELF[escape('hyphen-hu')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Hungarian')])) {
    SELF[escape('kde-i18n-Hungarian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Hungarian')])) {
    SELF[escape('kde-l10n-Hungarian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-hu')])) {
    SELF[escape('libreoffice-langpack-hu')] = nlist();
} else {
    SELF;
};

