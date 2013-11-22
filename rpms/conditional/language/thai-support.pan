#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Thai Support
#
#
# conditional packages
#

unique template rpms/conditional/language/thai-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-th')])) {
    SELF[escape('hunspell-th')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Thai')])) {
    SELF[escape('kde-l10n-Thai')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-th')])) {
    SELF[escape('libreoffice-langpack-th')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('poppler')]) && ! exists(SELF[escape('poppler-data')])) {
    SELF[escape('poppler-data')] = nlist();
} else {
    SELF;
};

