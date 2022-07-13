
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4379]";
say "==================================================";


=begin tomty
%(
  tag => $["rc_2021_07", "unicode", "closed"]
);
=end tomty

task-run "4379";

