
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4205]";
say "==================================================
";

=begin tomty
%(
  tag => $["rc_2021_06", "closed", ""]
);
=end tomty

task-run "4205";

