#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Swedish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/swedish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-sv')])) {
    SELF[escape('autocorr-sv')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-sv')])) {
    SELF[escape('eclipse-nls-sv')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-sv')])) {
    SELF[escape('hunspell-sv')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-sv')])) {
    SELF[escape('hyphen-sv')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Swedish')])) {
    SELF[escape('kde-i18n-Swedish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Swedish')])) {
    SELF[escape('kde-l10n-Swedish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-sv')])) {
    SELF[escape('libreoffice-langpack-sv')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-sv')])) {
    SELF[escape('mythes-sv')] = nlist();
} else {
    SELF;
};

