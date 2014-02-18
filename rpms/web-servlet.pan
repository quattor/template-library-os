#
# Template generated from OS' comps.xml - DO NOT EDIT
#
# Web Servlet Engine
# Allows the system to host Java servlets.
#
# mandatory packages
#

unique template rpms/web-servlet;

prefix '/software/packages';

'{tomcat6}' ?= nlist();
