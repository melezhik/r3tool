
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/3929]";
say "==================================================
";

=begin tomty
%(
  tag => $["rc_2021_06", "closed", ""]
);
=end tomty

task-run "3929";

