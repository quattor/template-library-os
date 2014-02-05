#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Bulgarian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/bulgarian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-bg')])) {
    SELF[escape('aspell-bg')] = nlist();
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

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Bulgarian')])) {
    SELF[escape('kde-i18n-Bulgarian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-bg_BG')])) {
    SELF[escape('openoffice.org-langpack-bg_BG')] = nlist();
} else {
    SELF;
};

