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

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-br')])) {
    SELF[escape('aspell-br')] = nlist();
} else {
    SELF;
};

