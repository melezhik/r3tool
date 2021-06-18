
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4387]";
say "==================================================
";

=begin tomty
%(
  tag => $["fresh", "regexp", "parsing", "open"]
);
=end tomty

task-run "4387";

