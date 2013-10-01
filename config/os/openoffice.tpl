unique template config/os/openoffice;

'/software/packages'=pkg_repl('openoffice.org-base','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-calc','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-core','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-draw','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-writer','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-xsltfilter','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-ure','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-testtools','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-sdk','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-pyuno','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-math','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-emailmerge','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-graphicfilter','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-headless','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-impress','3.1.1-19.5.el5_5.6','x86_64');
'/software/packages'=pkg_repl('openoffice.org-javafilter','3.1.1-19.5.el5_5.6','x86_64');

'/software/packages'=pkg_repl('openoffice.org-langpack-fr','3.1.1-19.5.el5_5.6','x86_64');

'/software/packages'=pkg_repl('bsh','1.3.0-9jpp.1','x86_64');
'/software/packages'=pkg_repl('hsqldb','1.8.0.9-1jpp.2','x86_64');
'/software/packages'=pkg_repl('lucene','1.4.3-1jpp.16','x86_64');
'/software/packages'=pkg_repl('antlr','2.7.6-4jpp.2','x86_64');
'/software/packages'=pkg_repl('bsf','2.3.0-11jpp.1','x86_64');
'/software/packages'=pkg_repl('gjdoc','0.7.7-12.el5','x86_64');
'/software/packages'=pkg_repl('gstreamer','0.10.20-3.el5','x86_64');
'/software/packages'=pkg_repl('gstreamer-plugins-base','0.10.20-3.0.1.el5_3','x86_64');
'/software/packages'=pkg_repl('gstreamer-tools','0.10.20-3.el5','x86_64');
'/software/packages'=pkg_repl('java-1.4.2-gcj-compat','1.4.2.0-40jpp.115','x86_64');
'/software/packages'=pkg_repl('liboil','0.3.8-2.1','x86_64');
'/software/packages'=pkg_repl('libtheora','1.0alpha7-1','x86_64');
'/software/packages'=pkg_repl('tomcat5-jsp-2.0-api','5.5.23-0jpp.17.el5_6','x86_64');
'/software/packages'=pkg_repl('tomcat5-servlet-2.4-api','5.5.23-0jpp.17.el5_6','x86_64');
'/software/packages'=pkg_repl('xalan-j2','2.7.0-6jpp.1','x86_64');
'/software/packages'=pkg_repl('xerces-j2','2.7.1-7jpp.2.el5_4.2','x86_64');

'/software/packages'=pkg_repl('libwpd','0.8.7-3.el5','x86_64');
include { 'config/os/updates' };
