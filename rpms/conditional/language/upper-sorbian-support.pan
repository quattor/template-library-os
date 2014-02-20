#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Upper Sorbian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/upper-sorbian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-hsb')])) {
    SELF[escape('hunspell-hsb')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-hsb')])) {
    SELF[escape('hyphen-hsb')] = nlist();
} else {
    SELF;
};

