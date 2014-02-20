#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Russian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/russian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-ru')])) {
    SELF[escape('autocorr-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-ru')])) {
    SELF[escape('eclipse-nls-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ru')])) {
    SELF[escape('hunspell-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-ru')])) {
    SELF[escape('hyphen-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Russian')])) {
    SELF[escape('kde-i18n-Russian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Russian')])) {
    SELF[escape('kde-l10n-Russian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ru')])) {
    SELF[escape('libreoffice-langpack-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-ru')])) {
    SELF[escape('man-pages-ru')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-ru')])) {
    SELF[escape('mythes-ru')] = nlist();
} else {
    SELF;
};

