
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/1415]";
say "==================================================";


=begin tomty
%(
  tag => $["performance", "closed"]
);
=end tomty

task-run "1415";

