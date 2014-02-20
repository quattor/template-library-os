#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Turkmen Support
#
#
# conditional packages
#

unique template rpms/conditional/language/turkmen-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-tk')])) {
    SELF[escape('hunspell-tk')] = nlist();
} else {
    SELF;
};

