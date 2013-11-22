#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Oriya Support
#
#
# conditional packages
#

unique template rpms/conditional/language/oriya-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-or')])) {
    SELF[escape('hunspell-or')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-or')])) {
    SELF[escape('hyphen-or')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-or')])) {
    SELF[escape('libreoffice-langpack-or')] = nlist();
} else {
    SELF;
};

