
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/2488]";
say "==================================================";


=begin tomty
%(
  tag => $["closed"]
);
=end tomty

task-run "2488";

