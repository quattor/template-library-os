unique template rpms/web_server;

prefix '/software/packages';


'{httpd}' ?= dict();
'{httpd-manual}' ?= dict();
'{httpd-tools}' ?= dict();
'{mod_ssl}' ?= dict();
