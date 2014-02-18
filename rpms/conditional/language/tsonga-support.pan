#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Tsonga Support
#
#
# conditional packages
#

unique template rpms/conditional/language/tsonga-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ts')])) {
    SELF[escape('hunspell-ts')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ts')])) {
    SELF[escape('libreoffice-langpack-ts')] = nlist();
} else {
    SELF;
};

