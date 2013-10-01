template config/lal/sun_x4500;

variable NIC_INTEL ?= false;

'/software/packages'= {
  pkg_add("mvSatalinux-2.6.18-92.1.6.el5","3.6.3_2-1",PKG_ARCH_DEFAULT);
#  if (NIC_INTEL) {
#    pkg_add("sun-10-gigabit-kernel-2.6.9-55.0.9.EL_lustre.1.6.3smp","1.0.104.1-1",PKG_ARCH_DEFAULT);
#  };
  SELF;
};


