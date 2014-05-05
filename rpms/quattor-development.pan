unique template rpms/quattor-development;

prefix '/software/packages';

'{perl-Template-Toolkit}' = nlist();
'{perl-Text-Autoformat}' = nlist();
'{perl-Pod-POM}' = nlist();
'{perl-Test-Harness}' = nlist();
'{perl-Test-Simple}' = nlist();
'{perl-Test-MockModule}' = nlist();
'{perl-Test-MockObject}' = nlist();
'{perl-Test-NoWarnings}' = nlist();

'{rpmdevtools}' = nlist();

# Pan compiler
include { 'quattor/client/pan_compiler' };

