
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/pull/4415]";
say "==================================================
";

=begin tomty
%(
  tag => $["pr", "rc_2021_07", "closed"]
);
=end tomty

task-run "pull_4415";

