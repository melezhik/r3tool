
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4410]";
say "==================================================
";

=begin tomty
%(
  tag => $["closed", "rc_2021_07"]
);
=end tomty

task-run "4410";

