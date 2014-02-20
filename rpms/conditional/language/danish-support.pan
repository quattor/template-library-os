#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Danish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/danish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-da')])) {
    SELF[escape('autocorr-da')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-da')])) {
    SELF[escape('eclipse-nls-da')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-da')])) {
    SELF[escape('hunspell-da')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-da')])) {
    SELF[escape('hyphen-da')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Danish')])) {
    SELF[escape('kde-i18n-Danish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Danish')])) {
    SELF[escape('kde-l10n-Danish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-da')])) {
    SELF[escape('libreoffice-langpack-da')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-da')])) {
    SELF[escape('mythes-da')] = nlist();
} else {
    SELF;
};

