
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/pull_4450]";
say "==================================================
";

=begin tomty
%(
  tag => $["pr", "rc_2021_06"]
);
=end tomty

task-run "pull_4450";

