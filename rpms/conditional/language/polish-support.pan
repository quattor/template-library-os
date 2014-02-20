#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Polish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/polish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-pl')])) {
    SELF[escape('autocorr-pl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-pl')])) {
    SELF[escape('eclipse-nls-pl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-pl')])) {
    SELF[escape('hunspell-pl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-pl')])) {
    SELF[escape('hyphen-pl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Polish')])) {
    SELF[escape('kde-i18n-Polish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Polish')])) {
    SELF[escape('kde-l10n-Polish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-pl')])) {
    SELF[escape('libreoffice-langpack-pl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-pl')])) {
    SELF[escape('man-pages-pl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-pl')])) {
    SELF[escape('mythes-pl')] = nlist();
} else {
    SELF;
};

