#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Azerbaijani Support
#
#
# conditional packages
#

unique template rpms/conditional/language/azerbaijani-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-az')])) {
    SELF[escape('hunspell-az')] = nlist();
} else {
    SELF;
};

