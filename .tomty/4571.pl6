
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4571]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "4571";

