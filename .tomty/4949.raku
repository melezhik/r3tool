
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4949]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "4949";

