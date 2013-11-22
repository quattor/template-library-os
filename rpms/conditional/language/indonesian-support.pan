#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Indonesian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/indonesian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-id')])) {
    SELF[escape('eclipse-nls-id')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-id')])) {
    SELF[escape('hunspell-id')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-id')])) {
    SELF[escape('hyphen-id')] = nlist();
} else {
    SELF;
};

