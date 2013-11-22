#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Brazilian Portuguese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/brazilian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-pt')])) {
    SELF[escape('autocorr-pt')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-pt_BR')])) {
    SELF[escape('eclipse-nls-pt_BR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-pt')])) {
    SELF[escape('hunspell-pt')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-pt')])) {
    SELF[escape('hyphen-pt')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Brazil')])) {
    SELF[escape('kde-i18n-Brazil')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Brazil')])) {
    SELF[escape('kde-l10n-Brazil')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-pt-BR')])) {
    SELF[escape('libreoffice-langpack-pt-BR')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-pt')])) {
    SELF[escape('mythes-pt')] = nlist();
} else {
    SELF;
};

