#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Malagasy Support
#
#
# conditional packages
#

unique template rpms/conditional/language/malagasy-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-mg')])) {
    SELF[escape('hunspell-mg')] = nlist();
} else {
    SELF;
};

