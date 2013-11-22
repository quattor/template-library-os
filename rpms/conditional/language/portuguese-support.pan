#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Portuguese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/portuguese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-pt')])) {
    SELF[escape('autocorr-pt')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-pt')])) {
    SELF[escape('eclipse-nls-pt')] = nlist();
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

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Portuguese')])) {
    SELF[escape('kde-i18n-Portuguese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Portuguese')])) {
    SELF[escape('kde-l10n-Portuguese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-pt-PT')])) {
    SELF[escape('libreoffice-langpack-pt-PT')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-pt')])) {
    SELF[escape('mythes-pt')] = nlist();
} else {
    SELF;
};

