#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Fijian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/fijian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-fj')])) {
    SELF[escape('hunspell-fj')] = nlist();
} else {
    SELF;
};

