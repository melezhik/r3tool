
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/3027]";
say "==================================================
";

=begin tomty
%(
  tag => $["rc_2021_06", "open"]
);
=end tomty

task-run "3027";

