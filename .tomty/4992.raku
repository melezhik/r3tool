
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4992]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "4992";

