
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/3783]";
say "==================================================";


=begin tomty
%(
  tag => $["test_needed", "open", ""]
);
=end tomty

task-run "3783";

