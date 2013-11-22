#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Czech Support
#
#
# conditional packages
#

unique template rpms/conditional/language/czech-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-cs')])) {
    SELF[escape('autocorr-cs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-cs')])) {
    SELF[escape('eclipse-nls-cs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-cs')])) {
    SELF[escape('hunspell-cs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-cs')])) {
    SELF[escape('hyphen-cs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Czech')])) {
    SELF[escape('kde-i18n-Czech')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Czech')])) {
    SELF[escape('kde-l10n-Czech')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-cs')])) {
    SELF[escape('libreoffice-langpack-cs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-cs')])) {
    SELF[escape('man-pages-cs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-cs')])) {
    SELF[escape('mythes-cs')] = nlist();
} else {
    SELF;
};

