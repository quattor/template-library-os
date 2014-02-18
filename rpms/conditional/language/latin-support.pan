#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Latin Support
#
#
# conditional packages
#

unique template rpms/conditional/language/latin-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-la')])) {
    SELF[escape('hunspell-la')] = nlist();
} else {
    SELF;
};

