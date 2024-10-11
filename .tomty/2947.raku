
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/2947]";
say "==================================================";


=begin tomty
%(
  tag => $["closed", "repl", "flap"]
);
=end tomty

task-run "2947";

