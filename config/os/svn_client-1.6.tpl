# Template to update Subversion client to 1.6.x

template config/os/svn_client-1.6;

# SVN dependencies provided by the OS
"/software/packages"=pkg_repl("apr");
"/software/packages"=pkg_repl("apr-util");
"/software/packages"=pkg_repl("apr-devel");
"/software/packages"=pkg_repl("apr-util-devel");

"/software/packages"=pkg_repl('db4-devel');
"/software/packages"=pkg_repl('db4-cxx'); # Needed by db4-devel
"/software/packages"=pkg_repl('expat-devel');
"/software/packages"=pkg_repl('openldap-devel');
"/software/packages"=pkg_repl('gnutls-devel');

"/software/packages"=pkg_repl('libgcrypt-devel');
"/software/packages"=pkg_repl('libgpg-error-devel');
"/software/packages"=pkg_repl('cyrus-sasl-devel');
"/software/packages"=pkg_repl("zlib-devel");

# Remove conflicting packages from old versions
"/software/packages"=pkg_del('cadaver');
"/software/packages"=pkg_del('subversion-javahl');
"/software/packages"=pkg_del('py24_pysvn_svn142');

# Reapply OS RPM updates.
# Be sure to do it before adding SVN-specific versions of some
# dependencies and the specific SVN version added here.
include { 'config/os/updates' };

# SVN dependencies with non standard versions.
# Ensure this is done after applying the OS updates.
"/software/packages"=pkg_repl("neon");
"/software/packages"=pkg_repl("neon-devel");
"/software/packages"=pkg_repl("sqlite");
"/software/packages"=pkg_repl("sqlite-devel");

# Add SVN client.
# Ensure this is done after applying the OS updates.
"/software/packages"=pkg_repl("subversion");
"/software/packages"=pkg_repl("subversion-devel");
"/software/packages"=pkg_repl("subversion-perl");

"/software/packages"=pkg_ronly("mod_dav_svn");
