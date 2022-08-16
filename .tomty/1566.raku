
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/1566]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "1566";

