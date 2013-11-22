#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Kannada Support
#
#
# conditional packages
#

unique template rpms/conditional/language/kannada-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-kn')])) {
    SELF[escape('hunspell-kn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-kn')])) {
    SELF[escape('hyphen-kn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Kannada')])) {
    SELF[escape('kde-l10n-Kannada')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-kn')])) {
    SELF[escape('libreoffice-langpack-kn')] = nlist();
} else {
    SELF;
};

