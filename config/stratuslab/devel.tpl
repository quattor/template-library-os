# ${BUILD_INFO}
#
# Created as part of the StratusLab project (http://stratuslab.eu)
#
# Copyright (c) 2010-2011, Centre National de la Recherche Scientifique
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

unique template config/stratuslab/devel;

# XMLRPC
'/software/packages' = pkg_repl('xmlrpc-c-devel','1.06.18-1.el5.kb','x86_64');

# Need newer version of Ruby (fix for missing REXML::Formatter)
'/software/packages' = pkg_repl('ruby-devel', '1.8.6.287-2', 'x86_64');

# Java Dependencies
'/software/packages' = pkg_repl('antlr','2.7.6-4jpp.2','x86_64');
'/software/packages' = pkg_repl('gjdoc','0.7.7-12.el5','x86_64');
'/software/packages' = pkg_repl('jakarta-commons-codec','1.3-7jpp.2','x86_64');
'/software/packages' = pkg_repl('jakarta-commons-httpclient','3.0-7jpp.1','x86_64');
'/software/packages' = pkg_repl('jakarta-commons-logging','1.0.4-6jpp.1','x86_64');
'/software/packages' = pkg_repl('java-1.4.2-gcj-compat','1.4.2.0-40jpp.115','x86_64');
'/software/packages' = pkg_repl('junit','3.8.2-3jpp.1','x86_64');
'/software/packages' = pkg_repl('tomcat5-servlet-2.4-api','5.5.23-0jpp.7.el5_3.2','x86_64');

# Updated version of sqlite
'/software/packages' = pkg_repl('sqlite-devel','3.7.0-1','x86_64');

# OpenNebula uses scons to control the build.
'/software/packages' = pkg_repl('scons','0.97-1.el5.rf','noarch');

# Various development libraries needed for the build.
'/software/packages' = pkg_repl('curl-devel','7.15.5-9.el5','x86_64');
'/software/packages' = pkg_repl('libxml2-devel','2.6.26-2.1.2.8','x86_64');
'/software/packages' = pkg_repl('openssl-devel','0.9.8e-12.el5_4.6','x86_64');
'/software/packages' = pkg_repl('libidn-devel','0.6.5-1.1','x86_64');
'/software/packages' = pkg_repl('krb5-devel','1.6.1-36.el5_5.2','x86_64');
'/software/packages' = pkg_repl('e2fsprogs-devel','1.39-23.el5','x86_64');
'/software/packages' = pkg_repl('keyutils-libs-devel','1.2-1.el5','x86_64');
'/software/packages' = pkg_repl('libselinux-devel','1.33.4-5.5.el5','x86_64');
'/software/packages' = pkg_repl('libsepol-devel','1.15.2-3.el5','x86_64');

include { 'config/os/updates' };
