
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4985]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "lta"]
);
=end tomty

task-run "4985";

