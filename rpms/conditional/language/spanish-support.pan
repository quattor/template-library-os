#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Spanish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/spanish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-es')])) {
    SELF[escape('autocorr-es')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-es')])) {
    SELF[escape('eclipse-nls-es')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-es')])) {
    SELF[escape('hunspell-es')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-es')])) {
    SELF[escape('hyphen-es')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Spanish')])) {
    SELF[escape('kde-i18n-Spanish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Spanish')])) {
    SELF[escape('kde-l10n-Spanish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-es')])) {
    SELF[escape('libreoffice-langpack-es')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-es')])) {
    SELF[escape('man-pages-es')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-es-extra')])) {
    SELF[escape('man-pages-es-extra')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-es')])) {
    SELF[escape('mythes-es')] = nlist();
} else {
    SELF;
};

