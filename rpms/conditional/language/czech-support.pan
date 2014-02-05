#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Czech Support
#
#
# conditional packages
#

unique template rpms/conditional/language/czech-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-cs')])) {
    SELF[escape('aspell-cs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('fonts-ISO8859-2-100dpi')])) {
    SELF[escape('fonts-ISO8859-2-100dpi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('fonts-ISO8859-2-75dpi')])) {
    SELF[escape('fonts-ISO8859-2-75dpi')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Czech')])) {
    SELF[escape('kde-i18n-Czech')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-cs')])) {
    SELF[escape('man-pages-cs')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-cs_CZ')])) {
    SELF[escape('openoffice.org-langpack-cs_CZ')] = nlist();
} else {
    SELF;
};

