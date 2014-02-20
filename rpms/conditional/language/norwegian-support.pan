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

'packages' = if (exists(SELF[escape('aspell')]) && ! exists(SELF[escape('aspell-no')])) {
    SELF[escape('aspell-no')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Norwegian')])) {
    SELF[escape('kde-i18n-Norwegian')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Norwegian-Nynorsk')])) {
    SELF[escape('kde-i18n-Norwegian-Nynorsk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-nb_NO')])) {
    SELF[escape('openoffice.org-langpack-nb_NO')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-nn_NO')])) {
    SELF[escape('openoffice.org-langpack-nn_NO')] = nlist();
} else {
    SELF;
};

