
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/3865]";
say "==================================================";


=begin tomty
%(
  tag => $["performnace", "closed", "test_needed"]
);
=end tomty

task-run "3865";

