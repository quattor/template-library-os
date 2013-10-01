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

unique template config/stratuslab/node;

# Readonly module for components.
'/software/packages' = pkg_repl('perl-Readonly', '1.03-1.2.el5.rf', 'noarch');

# XMLRPC
'/software/packages' = pkg_repl('xmlrpc','2.0.1-3jpp.1','x86_64');
'/software/packages' = pkg_repl('xmlrpc-c','1.06.18-1.el5.kb','x86_64');

# Need newer version of Ruby (fix for missing REXML::Formatter)
'/software/packages' = pkg_repl('ruby', '1.8.6.287-2', 'x86_64');
'/software/packages' = pkg_repl('ruby-docs', '1.8.6.287-2', 'x86_64');
'/software/packages' = pkg_repl('ruby-irb', '1.8.6.287-2', 'x86_64');
'/software/packages' = pkg_repl('ruby-libs', '1.8.6.287-2', 'x86_64');
'/software/packages' = pkg_repl('ruby-mode', '1.8.6.287-2', 'x86_64');
'/software/packages' = pkg_repl('ruby-rdoc', '1.8.6.287-2', 'x86_64');
'/software/packages' = pkg_repl('ruby-ri', '1.8.6.287-2', 'x86_64');
'/software/packages' = pkg_repl('ruby-tcltk', '1.8.6.287-2', 'x86_64');

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
'/software/packages' = pkg_repl('sqlite','3.7.0-1','x86_64');

# Install squid
'/software/packages' = pkg_repl('squid','2.6.STABLE21-6.el5','x86_64');

include { 'config/os/updates' };
