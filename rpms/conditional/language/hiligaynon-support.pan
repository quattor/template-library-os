#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Hiligaynon Support
#
#
# conditional packages
#

unique template rpms/conditional/language/hiligaynon-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-hil')])) {
    SELF[escape('hunspell-hil')] = nlist();
} else {
    SELF;
};

