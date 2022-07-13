
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/3783]";
say "==================================================";


=begin tomty
%(
  tag => $["test_needed", "closed"]
);
=end tomty

task-run "3783";

