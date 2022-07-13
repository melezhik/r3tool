
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4783]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "tests_needed"]
);
=end tomty

task-run "4783";

