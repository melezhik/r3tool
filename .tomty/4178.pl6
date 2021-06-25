
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4178]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "test_needed"]
);
=end tomty

task-run "4178";

