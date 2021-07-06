
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/2947]";
say "==================================================";


=begin tomty
%(
  tag => $["open", "test_needed", "repl"]
);
=end tomty

task-run "2947";

