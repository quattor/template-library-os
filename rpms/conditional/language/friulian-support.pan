#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Friulian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/friulian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-fur')])) {
    SELF[escape('hunspell-fur')] = nlist();
} else {
    SELF;
};

