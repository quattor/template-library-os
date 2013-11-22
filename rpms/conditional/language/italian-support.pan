#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Italian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/italian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-it')])) {
    SELF[escape('autocorr-it')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-it')])) {
    SELF[escape('eclipse-nls-it')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-it')])) {
    SELF[escape('hunspell-it')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-it')])) {
    SELF[escape('hyphen-it')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Italian')])) {
    SELF[escape('kde-i18n-Italian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Italian')])) {
    SELF[escape('kde-l10n-Italian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-it')])) {
    SELF[escape('libreoffice-langpack-it')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-it')])) {
    SELF[escape('man-pages-it')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-it')])) {
    SELF[escape('mythes-it')] = nlist();
} else {
    SELF;
};

