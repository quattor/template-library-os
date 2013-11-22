#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Slovenian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/slovenian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-sl')])) {
    SELF[escape('aspell-sl')] = nlist();
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

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Slovenian')])) {
    SELF[escape('kde-i18n-Slovenian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-sl_SI')])) {
    SELF[escape('openoffice.org-langpack-sl_SI')] = nlist();
} else {
    SELF;
};

