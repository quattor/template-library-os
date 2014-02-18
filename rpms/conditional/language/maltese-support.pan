#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Maltese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/maltese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-mt')])) {
    SELF[escape('hunspell-mt')] = nlist();
} else {
    SELF;
};

