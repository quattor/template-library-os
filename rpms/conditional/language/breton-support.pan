#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Breton Support
#
#
# conditional packages
#

unique template rpms/conditional/language/breton-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-br')])) {
    SELF[escape('hunspell-br')] = nlist();
} else {
    SELF;
};

