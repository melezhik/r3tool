
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4097]";
say "==================================================
";

=begin tomty
%(
  tag => $["open", "performance"]
);
=end tomty

task-run "4097";

