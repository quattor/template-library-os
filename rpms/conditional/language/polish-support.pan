#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Polish Support
#
#
# conditional packages
#

unique template rpms/conditional/language/polish-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-pl')])) {
    SELF[escape('aspell-pl')] = nlist();
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

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Polish')])) {
    SELF[escape('kde-i18n-Polish')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('man-pages')]) && ! exists(SELF[escape('man-pages-pl')])) {
    SELF[escape('man-pages-pl')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-pl_PL')])) {
    SELF[escape('openoffice.org-langpack-pl_PL')] = nlist();
} else {
    SELF;
};

