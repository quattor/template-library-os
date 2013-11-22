#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Amazigh Support
#
#
# conditional packages
#

unique template rpms/conditional/language/amazigh-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-ber')])) {
    SELF[escape('hunspell-ber')] = nlist();
} else {
    SELF;
};

