#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Galician Support
#
#
# conditional packages
#

unique template rpms/conditional/language/galician-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-gl')])) {
    SELF[escape('aspell-gl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-gl_ES')])) {
    SELF[escape('openoffice.org-langpack-gl_ES')] = nlist();
} else {
    SELF;
};

