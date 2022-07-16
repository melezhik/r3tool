
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4980]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "timeout"]
);
=end tomty

task-run "4980";

