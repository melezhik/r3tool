
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/3919]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "3919";

