
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/2122]";
say "==================================================";


=begin tomty
%(
  tag => $["open", "test_needed", "hang"]
);
=end tomty

task-run "2122";

