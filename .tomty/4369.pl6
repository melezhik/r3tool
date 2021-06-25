
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/4369]";
say "==================================================
";

=begin tomty
%(
  tag => $["closed", "rc_2021_06"]
);
=end tomty

task-run "4369";

