
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/1687]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "1687";

