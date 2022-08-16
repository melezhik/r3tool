
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/1550]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "1550";

