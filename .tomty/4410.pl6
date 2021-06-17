
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4410]";
say "==================================================
";

=begin tomty
%(
  tag => $["open", "fresh", "slow"]
);
=end tomty

task-run "4410";

