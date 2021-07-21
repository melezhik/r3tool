
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4464]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "rc_2021_07"]
);
=end tomty

task-run "4464";

