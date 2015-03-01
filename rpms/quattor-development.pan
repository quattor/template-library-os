unique template rpms/quattor-development;

prefix '/software/packages';

'{perl-Template-Toolkit}' = nlist();
'{perl-Text-Autoformat}' = nlist();
'{perl-Text-Glob}' = nlist();
'{perl-Pod-POM}' = nlist();
'{perl-Test-Deep}' = nlist();
'{perl-Test-Harness}' = nlist();
'{perl-Test-Pod}' = nlist();
'{perl-Test-Simple}' = nlist();
'{perl-Test-MockModule}' = nlist();
'{perl-Test-MockObject}' = nlist();
'{perl-Test-NoWarnings}' = nlist();
'{perl-Class-Inspector}' = nlist();
'{perl-JSON-Any}' = nlist();
'{perl-Config-Properties}' = nlist();
'{perl-Config-Tiny}' = nlist();
'{perl-File-Copy-Recursive}' = nlist();

'{rpmdevtools}' = nlist();

# Pan compiler
include { 'quattor/client/pan_compiler' };

