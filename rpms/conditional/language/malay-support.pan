#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Malay Support
#
#
# conditional packages
#

unique template rpms/conditional/language/malay-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ms')])) {
    SELF[escape('hunspell-ms')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-ms')])) {
    SELF[escape('libreoffice-langpack-ms')] = nlist();
} else {
    SELF;
};

