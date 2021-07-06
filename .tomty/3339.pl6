
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/3339]";
say "==================================================";


=begin tomty
%(
  tag => $["open", "repl", ""]
);
=end tomty

task-run "3339";

