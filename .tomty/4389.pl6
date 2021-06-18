
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4389]";
say "==================================================
";

=begin tomty
%(
  tag => $["open", "fresh", "modules", "nr"]
);
=end tomty

task-run "4389";

