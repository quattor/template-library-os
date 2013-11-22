#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Maithili Support
#
#
# conditional packages
#

unique template rpms/conditional/language/maithili-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-mai')])) {
    SELF[escape('hunspell-mai')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Maithili')])) {
    SELF[escape('kde-l10n-Maithili')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-mai')])) {
    SELF[escape('libreoffice-langpack-mai')] = nlist();
} else {
    SELF;
};

