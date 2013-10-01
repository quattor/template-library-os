unique template config/stratuslab/frontend;

'/software/packages' = pkg_repl('rubygems','1.3.1-1.el5','noarch');
'/software/packages' = pkg_repl('rubygem-sqlite3-ruby','1.2.4-1.el5','x86_64');
'/software/packages' = pkg_repl('ruby-mysql','2.7.3-1.el5','x86_64');

# MySQL client is compiled into oned (even if not used directly).
'/software/packages' = pkg_repl('mysql','5.0.77-4.el5_4.2','x86_64');

# Must have mkisofs for creating context images.
'/software/packages' = pkg_repl('genisoimage','1.1.10-2.fc14','x86_64');

# Readonly module for components.
'/software/packages' = pkg_repl('perl-Readonly', '1.03-1.2.el5.rf', 'noarch');

include { 'config/os/updates' };
