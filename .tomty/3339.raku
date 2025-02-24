
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/3339]";
say "==================================================";


=begin tomty
%(
  tag => $["close", "repl"]
);
=end tomty

task-run "3339";

