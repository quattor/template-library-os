# This template may need to be included several times.
template config/os/updates;

# Configure variables used to control errata deployment
include { if_exists(OS_ERRATA_INIT) };

# Include OS  errata.
# If defined it must exist.
include { PKG_OS_ERRATA_TEMPLATE };

# Include OS errata fix if defined.
# If it doesn't exists, it is undefined.
include { PKG_OS_ERRATA_FIX_TEMPLATE };


# Site specific updates
# Done last to allow site customization to version provided by distrib +
# errata. This is the site responsability to  ensure consistency between RPMs
# in this templates and errata not to break dependencies.
include { 'rpms/updates' };


