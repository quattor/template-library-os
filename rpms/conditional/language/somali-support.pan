#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Somali Support
#
#
# conditional packages
#

unique template rpms/conditional/language/somali-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-so')])) {
    SELF[escape('hunspell-so')] = nlist();
} else {
    SELF;
};

