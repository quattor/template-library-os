# This template replaces mod_python in the standard httpd config by
# mod_wsgi. 
# Note that mod_wsgi, even though it can be installed and loaded in
# the same web server as mod_python, tends not to work well in this
# configuration, particularly in daemon mode.
 
unique template config/os/httpd-wsgi;

# Include config
include { 'config/os/httpd' };

# Remove mod_python
'/software/packages' = pkg_del('mod_python');

# Add mod_wsgi (do not reapply errata as this is an add-on)
'/software/packages' = pkg_repl('mod_wsgi', '3.1-1', PKG_ARCH_DEFAULT);

