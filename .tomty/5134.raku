
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/5134]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "5134";

