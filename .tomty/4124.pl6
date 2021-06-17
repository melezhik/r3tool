
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4124]";
say "==================================================
";

=begin tomty
%(
  tag => $["open"]
);
=end tomty

task-run "4124";

