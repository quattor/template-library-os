#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Greek Support
#
#
# conditional packages
#

unique template rpms/conditional/language/greek-support;

prefix '/software';

'packages' = if (exists(SELF[escape('eclipse-platform')]) && ! exists(SELF[escape('eclipse-nls-el')])) {
    SELF[escape('eclipse-nls-el')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hunspell')]) && ! exists(SELF[escape('hunspell-el')])) {
    SELF[escape('hunspell-el')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('hyphen')]) && ! exists(SELF[escape('hyphen-el')])) {
    SELF[escape('hyphen-el')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs3')]) && ! exists(SELF[escape('kde-i18n-Greek')])) {
    SELF[escape('kde-i18n-Greek')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-l10n-Greek')])) {
    SELF[escape('kde-l10n-Greek')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libreoffice-core')]) && ! exists(SELF[escape('libreoffice-langpack-el')])) {
    SELF[escape('libreoffice-langpack-el')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('mythes-en')]) && ! exists(SELF[escape('mythes-el')])) {
    SELF[escape('mythes-el')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('texlive')]) && ! exists(SELF[escape('tex-cm-lgc')])) {
    SELF[escape('tex-cm-lgc')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('texlive')]) && ! exists(SELF[escape('tex-kerkis')])) {
    SELF[escape('tex-kerkis')] = nlist();
} else {
    SELF;
};

