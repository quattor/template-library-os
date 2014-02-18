#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Catalan Support
#
#
# conditional packages
#

unique template rpms/conditional/language/catalan-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-ca')])) {
    SELF[escape('eclipse-nls-ca')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ca')])) {
    SELF[escape('hunspell-ca')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-ca')])) {
    SELF[escape('hyphen-ca')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Catalan')])) {
    SELF[escape('kde-i18n-Catalan')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Catalan')])) {
    SELF[escape('kde-l10n-Catalan')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ca')])) {
    SELF[escape('libreoffice-langpack-ca')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-ca')])) {
    SELF[escape('mythes-ca')] = nlist();
} else {
    SELF;
};

