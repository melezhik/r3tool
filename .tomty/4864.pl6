
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4864]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "4864";

