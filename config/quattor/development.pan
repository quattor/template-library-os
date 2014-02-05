unique template config/quattor/development;

prefix '/software/packages';

'{perl-Template-Toolkit}' ?= nlist();
'{perl-Text-Autoformat}' ?= nlist();
'{perl-Pod-POM}' ?= nlist();
'{perl-Text-Reform}' ?= nlist();
'{perl-TeX-Hyphen}' ?= nlist();

# For Perl unit testing
'{perl-Test-MockModule}' ?= nlist();
'{perl-Test-MockObject}' ?= nlist();
'{perl-Test-NoWarnings}' ?= nlist();
'{perl-UNIVERSAL-can}' ?= nlist();
'{perl-UNIVERSAL-isa}' ?= nlist();

# Pan compiler
include { 'quattor/client/pan_compiler' };
