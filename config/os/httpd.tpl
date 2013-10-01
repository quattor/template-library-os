unique template config/os/httpd;

include { 'rpms/web_server' };

# Add perl-Apache-Config (required by ncm-httpd)
'/software/packages' = pkg_repl('perl-Apache-Admin-Config','0.94-1.el4.rf','noarch');

# Re include RPM updates
include { 'config/os/updates' };


