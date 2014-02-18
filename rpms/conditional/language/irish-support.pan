#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Irish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/irish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ga')])) {
    SELF[escape('hunspell-ga')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-ga')])) {
    SELF[escape('hyphen-ga')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Irish')])) {
    SELF[escape('kde-l10n-Irish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ga')])) {
    SELF[escape('libreoffice-langpack-ga')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-ga')])) {
    SELF[escape('mythes-ga')] = nlist();
} else {
    SELF;
};

