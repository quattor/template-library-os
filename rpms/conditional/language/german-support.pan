#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# German Support
#
#
# conditional packages
#

unique template rpms/conditional/language/german-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-de')])) {
    SELF[escape('autocorr-de')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-de')])) {
    SELF[escape('eclipse-nls-de')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-de')])) {
    SELF[escape('hunspell-de')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-de')])) {
    SELF[escape('hyphen-de')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-German')])) {
    SELF[escape('kde-i18n-German')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-German')])) {
    SELF[escape('kde-l10n-German')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-de')])) {
    SELF[escape('libreoffice-langpack-de')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-de')])) {
    SELF[escape('mythes-de')] = nlist();
} else {
    SELF;
};

