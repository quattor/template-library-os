#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Bhutanese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/bhutanese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-dz')])) {
    SELF[escape('libreoffice-langpack-dz')] = nlist();
} else {
    SELF;
};

