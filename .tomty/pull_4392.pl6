
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/issues/pull_4392]";
say "==================================================
";

=begin tomty
%(
  tag => $["pr", "fresh", "closed","unicode"]
);
=end tomty

task-run "pull_4392";

