#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Sardinian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/sardinian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-sc')])) {
    SELF[escape('hunspell-sc')] = nlist();
} else {
    SELF;
};

