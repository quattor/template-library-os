#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Ukrainian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/ukrainian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-uk')])) {
    SELF[escape('eclipse-nls-uk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-uk')])) {
    SELF[escape('hunspell-uk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-uk')])) {
    SELF[escape('hyphen-uk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Ukrainian')])) {
    SELF[escape('kde-i18n-Ukrainian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Ukrainian')])) {
    SELF[escape('kde-l10n-Ukrainian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-uk')])) {
    SELF[escape('libreoffice-langpack-uk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-uk')])) {
    SELF[escape('man-pages-uk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-uk')])) {
    SELF[escape('mythes-uk')] = nlist();
} else {
    SELF;
};

