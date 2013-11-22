#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Assamese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/assamese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-as')])) {
    SELF[escape('hunspell-as')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-as')])) {
    SELF[escape('hyphen-as')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('ibus-m17n')])) {
    SELF[escape('ibus-m17n')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-as')])) {
    SELF[escape('libreoffice-langpack-as')] = nlist();
} else {
    SELF;
};

