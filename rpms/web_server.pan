unique template rpms/web_server;

include { 'rpms/group/core' };

prefix '/software/packages';


'{httpd}' ?= nlist();
'{httpd-manual}' ?= nlist();
'{httpd-tools}' ?= nlist();
'{mod_ssl}' ?= nlist();
