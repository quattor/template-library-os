#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Faroese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/faroese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-fo')])) {
    SELF[escape('hunspell-fo')] = nlist();
} else {
    SELF;
};

