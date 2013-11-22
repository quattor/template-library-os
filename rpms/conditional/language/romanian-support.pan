#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Romanian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/romanian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-ro')])) {
    SELF[escape('eclipse-nls-ro')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ro')])) {
    SELF[escape('hunspell-ro')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-ro')])) {
    SELF[escape('hyphen-ro')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Romanian')])) {
    SELF[escape('kde-i18n-Romanian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Romanian')])) {
    SELF[escape('kde-l10n-Romanian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ro')])) {
    SELF[escape('libreoffice-langpack-ro')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-ro')])) {
    SELF[escape('mythes-ro')] = nlist();
} else {
    SELF;
};

