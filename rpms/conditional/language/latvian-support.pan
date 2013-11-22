#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Latvian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/latvian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-lv')])) {
    SELF[escape('hunspell-lv')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-lv')])) {
    SELF[escape('hyphen-lv')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Latvian')])) {
    SELF[escape('kde-l10n-Latvian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-lv')])) {
    SELF[escape('mythes-lv')] = nlist();
} else {
    SELF;
};

