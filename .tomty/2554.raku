
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/2554]";
say "==================================================";


=begin tomty
%(
  tag => $["test_needed", "closed", "2021_07_rc"]
);
=end tomty

task-run "2554";

