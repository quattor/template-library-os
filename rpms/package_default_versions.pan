# Define default version of packages required during initial installation.
# Needed by AII to add the proper instruction in the KS config.

unique template rpms/package_default_versions;

# Entries in PKG_DEFAULT_VERSIONS must be either an OS version in the usual format (eg. sl640-x86_64)
# or 'default'.
# Normally there should be no OS specific version as OS-provided RPMs can be YUM installed as part
# of the base installation, using KS 'packages'.
variable PKG_DEFAULT_VERSIONS = nlist(
  'default',    nlist( '_perl-common-sense', list('3.5-1.el6', 'noarch'),
                       '_perl-JSON-XS', list('2.27-2.el6', PKG_ARCH_DEFAULT),
                       '_perl-Proc-ProcessTable', list('0.48-1.el6', PKG_ARCH_DEFAULT),
                       '_perl-Set-Scalar', list('1.25-2.el6', 'noarch'),
                     ),
);

variable package_default = {
  os_version = OS_VERSION_PARAMS['version'];
  if ( is_defined(PKG_DEFAULT_VERSIONS[os_version])) {
    PKG_DEFAULT_VERSIONS[os_version];
  } else if ( is_defined(PKG_DEFAULT_VERSIONS['default'])) {
    PKG_DEFAULT_VERSIONS['default'];
  } else {
    error('No default packages defined for '+os_version);
  };
};
