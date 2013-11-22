#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Luxembourgish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/luxembourgish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-lb')])) {
    SELF[escape('autocorr-lb')] = nlist();
} else {
    SELF;
};

