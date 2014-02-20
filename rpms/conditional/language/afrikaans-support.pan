#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Afrikaans Support
#
#
# conditional packages
#

unique template rpms/conditional/language/afrikaans-support;

prefix '/software';

'packages' = if (exists(SELF[escape('autocorr-en')]) && ! exists(SELF[escape('autocorr-af')])) {
    SELF[escape('autocorr-af')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-af')])) {
    SELF[escape('hyphen-af')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-af')])) {
    SELF[escape('libreoffice-langpack-af')] = nlist();
} else {
    SELF;
};

