
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/5445]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "cli"]
);
=end tomty

task-run "5445";

