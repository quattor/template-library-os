#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# French Support
#
#
# conditional packages
#

unique template rpms/conditional/language/french-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-fr')])) {
    SELF[escape('autocorr-fr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-fr')])) {
    SELF[escape('eclipse-nls-fr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-fr')])) {
    SELF[escape('hunspell-fr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-fr')])) {
    SELF[escape('hyphen-fr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-French')])) {
    SELF[escape('kde-i18n-French')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-French')])) {
    SELF[escape('kde-l10n-French')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-fr')])) {
    SELF[escape('libreoffice-langpack-fr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-fr')])) {
    SELF[escape('man-pages-fr')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-fr')])) {
    SELF[escape('mythes-fr')] = nlist();
} else {
    SELF;
};

