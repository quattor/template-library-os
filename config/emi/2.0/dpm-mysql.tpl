unique template config/emi/2.0/dpm-mysql;

# Needed by DPM 1.8.6
'/software/packages' = if (DPM_MAJOR_VERSION > '1.8.6' ) { 
  pkg_repl('python-lxml','2.0.11-1.el5','x86_64');
  pkg_repl('python-uuid','1.30-3.el5'  ,'noarch');
} else {
  SELF;
};

include { 'config/os/updates' };
