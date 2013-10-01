#
# XFS File System
#

unique template config/os/xfs;

variable XFS_KMDL_VERSION ?= '0.4-1';

"/software/packages"=pkg_repl("dmapi","2.2.8-1.sl4","x86_64");
#"/software/packages"=pkg_repl("dmapi-debuginfo","2.2.8-1.sl4","x86_64");
"/software/packages"=pkg_repl("dmapi-devel","2.2.8-1.sl4","x86_64");
"/software/packages"=pkg_add("kernel-module-xfs-"+KERNEL_VERSION_NUM+KERNEL_VARIANT,XFS_KMDL_VERSION,PKG_ARCH_KERNEL,"multi");
"/software/packages"=pkg_repl("xfs","0.4-1","x86_64");
#"/software/packages"=pkg_repl("xfs-debuginfo","0.4-1","x86_64");
"/software/packages"=pkg_repl("xfsdump","2.2.46-1","x86_64");
#"/software/packages"=pkg_repl("xfsdump-debuinfo","2.2.46-1","x86_64");
"/software/packages"=pkg_repl("xfsprogs","2.9.4-1","x86_64");
#"/software/packages"=pkg_repl("xfsprogs-debuginfo","2.9.4-1","x86_64");
"/software/packages"=pkg_repl("xfsprogs-devel","2.9.4-1","x86_64");

