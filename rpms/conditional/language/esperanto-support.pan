#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Esperanto Support
#
#
# conditional packages
#

unique template rpms/conditional/language/esperanto-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-eo')])) {
    SELF[escape('hunspell-eo')] = nlist();
} else {
    SELF;
};

