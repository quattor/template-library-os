#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Interlingua Support
#
#
# conditional packages
#

unique template rpms/conditional/language/interlingua-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ia')])) {
    SELF[escape('hunspell-ia')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-ia')])) {
    SELF[escape('hyphen-ia')] = nlist();
} else {
    SELF;
};

