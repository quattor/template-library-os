#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Norwegian Support
#
#
# conditional packages
#

unique template rpms/conditional/language/norwegian-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-no')])) {
    SELF[escape('eclipse-nls-no')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-nb')])) {
    SELF[escape('hunspell-nb')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-nn')])) {
    SELF[escape('hunspell-nn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Norwegian')])) {
    SELF[escape('kde-i18n-Norwegian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Norwegian-Nynorsk')])) {
    SELF[escape('kde-i18n-Norwegian-Nynorsk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Norwegian')])) {
    SELF[escape('kde-l10n-Norwegian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Norwegian-Nynorsk')])) {
    SELF[escape('kde-l10n-Norwegian-Nynorsk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-nb')])) {
    SELF[escape('libreoffice-langpack-nb')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-nn')])) {
    SELF[escape('libreoffice-langpack-nn')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-nb')])) {
    SELF[escape('mythes-nb')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-nn')])) {
    SELF[escape('mythes-nn')] = nlist();
} else {
    SELF;
};

