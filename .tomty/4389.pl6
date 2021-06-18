
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4389]";
say "==================================================
";

=begin tomty
%(
  tag => $["open", "fresh", "modules", "filesystem"]
);
=end tomty

task-run "4389";

