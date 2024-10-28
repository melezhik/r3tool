
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4136]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "regex"]
);
=end tomty

task-run "4136";

