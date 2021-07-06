
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4443]";
say "==================================================";


=begin tomty
%(
  tag => $["open", "repl", "rakuast"]
);
=end tomty

task-run "4443";

