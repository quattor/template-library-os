#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Chinese Support
#
#
# conditional packages
#

unique template rpms/conditional/language/chinese-support;

prefix '/software';

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-zh-CN')])) {
    SELF[escape('Cluster_Administration-zh-CN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('system-config-cluster')]) && ! exists(SELF[escape('Cluster_Administration-zh-TW')])) {
    SELF[escape('Cluster_Administration-zh-TW')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-zh-CN')])) {
    SELF[escape('Global_File_System-zh-CN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('gfs-utils')]) && ! exists(SELF[escape('Global_File_System-zh-TW')])) {
    SELF[escape('Global_File_System-zh-TW')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-zh-CN')])) {
    SELF[escape('Virtualization-zh-CN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('libvirt')]) && ! exists(SELF[escape('Virtualization-zh-TW')])) {
    SELF[escape('Virtualization-zh-TW')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Chinese')])) {
    SELF[escape('kde-i18n-Chinese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('kdelibs')]) && ! exists(SELF[escape('kde-i18n-Chinese-Big5')])) {
    SELF[escape('kde-i18n-Chinese-Big5')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('scim-m17n')]) && ! exists(SELF[escape('m17n-db-chinese')])) {
    SELF[escape('m17n-db-chinese')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-zh_CN')])) {
    SELF[escape('openoffice.org-langpack-zh_CN')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('openoffice.org-core')]) && ! exists(SELF[escape('openoffice.org-langpack-zh_TW')])) {
    SELF[escape('openoffice.org-langpack-zh_TW')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-bridge-gtk')])) {
    SELF[escape('scim-bridge-gtk')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-chewing')])) {
    SELF[escape('scim-chewing')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-chinese-standard')])) {
    SELF[escape('scim-chinese-standard')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-pinyin')])) {
    SELF[escape('scim-pinyin')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('qt')]) && ! exists(SELF[escape('scim-qtimm')])) {
    SELF[escape('scim-qtimm')] = nlist();
} else {
    SELF;
};

'packages' = if (exists(SELF[escape('xorg-x11-server-Xorg')]) && ! exists(SELF[escape('scim-tables-chinese')])) {
    SELF[escape('scim-tables-chinese')] = nlist();
} else {
    SELF;
};

