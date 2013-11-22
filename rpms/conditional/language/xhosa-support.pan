#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Xhosa Support
#
#
# conditional packages
#

unique template rpms/conditional/language/xhosa-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-xh')])) {
    SELF[escape('hunspell-xh')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-xh')])) {
    SELF[escape('libreoffice-langpack-xh')] = nlist();
} else {
    SELF;
};

