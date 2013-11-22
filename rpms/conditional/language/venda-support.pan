#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Venda Support
#
#
# conditional packages
#

unique template rpms/conditional/language/venda-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ve')])) {
    SELF[escape('hunspell-ve')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ve')])) {
    SELF[escape('libreoffice-langpack-ve')] = nlist();
} else {
    SELF;
};

