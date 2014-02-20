#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Swati Support
#
#
# conditional packages
#

unique template rpms/conditional/language/swati-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ss')])) {
    SELF[escape('hunspell-ss')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ss')])) {
    SELF[escape('libreoffice-langpack-ss')] = nlist();
} else {
    SELF;
};

