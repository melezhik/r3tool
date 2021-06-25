
#!raku

say "==================================================";
say "[https://github.com/rakudo/rakudo/pull/4392]";
say "==================================================";

=begin tomty
%(
  tag => $["pr", "fresh", "open","unicode"]
);
=end tomty

task-run "pull_4392";

