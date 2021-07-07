
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4178]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "test_needed", "rc_2021_07", "lta"]
);
=end tomty

task-run "4178";

