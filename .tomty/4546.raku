
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4546]";
say "==================================================";


=begin tomty
%(
  tag => $["open", "math"]
);
=end tomty

task-run "4546";

