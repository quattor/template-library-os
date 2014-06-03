template-library-os
===================

Template library for configuring OS.

This repository contains one branch for each OS version. OS versions with '-spma' suffix are intended for deployment by
SPMA-based ncm-spma. Those without the suffix are intended to be deployed with the YUM-based ncm-spma (v3 and later).

This branch, sl6.x, delivers templates that can be used to deploy any RHEL/CENTOS/SL6 version. When using other parts of the template
library, to use these templates you need to define the following variable:

```
variable OS_FLAVOUR_ENABLED ?= true;
```

You also need to define the actual OS version to deploy using variable `OS_VERSION`, as with previous generation
of OS templates.

In addition if you use YUM snapshot (you should!), you probably want to define the following variables, changing the
values to what is appropriate for your site (see http://quattor.github.com//documentation/2014/03/24/spma-yum-migration.html):

```
variable YUM_SNAPSHOT_DATE ?= '20140304';
variable AII_OSINSTALL_ROOT = '/yum/snapshots/'+YUM_SNAPSHOT_DATE;
```

OS base configuration now includes by default network configuration, using the standard network configuration
implemented by `os/network/config` from `template-library-standard`. To disable this standard network configuration,
define variable `OS_BASE_CONFIGURE_NETWORK` to false. Note that in this case, you must provide the network
configuration as part of the site-specific configuration.

