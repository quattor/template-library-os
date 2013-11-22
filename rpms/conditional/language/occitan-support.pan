#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Occitan Support
#
#
# conditional packages
#

unique template rpms/conditional/language/occitan-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-oc')])) {
    SELF[escape('hunspell-oc')] = nlist();
} else {
    SELF;
};

