#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Dutch Support
#
#
# conditional packages
#

unique template rpms/conditional/language/dutch-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-nl')])) {
    SELF[escape('autocorr-nl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-nl')])) {
    SELF[escape('eclipse-nls-nl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-nl')])) {
    SELF[escape('hunspell-nl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-nl')])) {
    SELF[escape('hyphen-nl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Dutch')])) {
    SELF[escape('kde-i18n-Dutch')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Dutch')])) {
    SELF[escape('kde-l10n-Dutch')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-nl')])) {
    SELF[escape('libreoffice-langpack-nl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-nl')])) {
    SELF[escape('mythes-nl')] = nlist();
} else {
    SELF;
};

