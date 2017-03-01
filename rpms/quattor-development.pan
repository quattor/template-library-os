unique template rpms/quattor-development;

'/software/packages' = {
  pkg_repl('perl-Template-Toolkit');
  pkg_repl('perl-Text-Autoformat');
  pkg_repl('perl-Text-Diff');
  pkg_repl('perl-Text-Glob');
  pkg_repl('perl-Pod-POM');
  pkg_repl('perl-Test-Deep');
  pkg_repl('perl-Test-Harness');
  pkg_repl('perl-Test-Pod');
  pkg_repl('perl-Test-Simple');
  pkg_repl('perl-Test-MockModule');
  pkg_repl('perl-Test-MockObject');
  pkg_repl('perl-Test-NoWarnings');
  pkg_repl('perl-Class-Inspector');
  pkg_repl('perl-JSON-Any');
  pkg_repl('perl-Config-General');
  pkg_repl('perl-Config-Properties');
  pkg_repl('perl-Config-Tiny');
  pkg_repl('perl-File-Copy-Recursive');
  pkg_repl('perl-CDB_File');
  pkg_repl('perl-Taint-Runtime');
  pkg_repl('perl-enum');
  pkg_repl('perl-XML-Simple');
  pkg_repl('perl-Module-Load');
  pkg_repl('perl-Perl-Critic');
  pkg_repl('perl-Parallel-ForkManager');

  pkg_repl('rpmdevtools');

  SELF;
};


# Pan compiler
include { 'quattor/client/pan_compiler' };

